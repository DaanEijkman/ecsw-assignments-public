# Assignment 1 — ChaCha20 Stream Cipher

In this assignment you implement the IETF ChaCha20 stream cipher (RFC 8439) in
Jasmin and validate it on the course firmware stack. The goal is to gain
experience with ARX ciphers, the Jasmin language, and the testing harness used
throughout the course.

## Learning Objectives

- Translate the ChaCha20 specification into Jasmin 
- Structure code into reusable building blocks (it is your freedom to chose
  how).
- Verify correctness against the Python reference implementation and official
  RFC vectors.

## Files You Will Modify

| Path | Purpose |
| --- | --- |
| `src/chacha20.jazz` | Jasmin implementation; you provide the cipher routines here. |

## Other Files of Interest
| Path | Purpose |
| --- | --- |
| `src/chacha20_wrapper.h` | Function declarations for exported Jasmin functions. |
| `tests/test_chacha20.py` | Test harness (mainly read-only; may modify for debugging). |
| `src/main.c` | Device firmware (mainly read-only; may modify for debugging). |
| `reference/` | Python model and helper utilities - use for understanding and cross-checking results. |


Shared infrastructure lives in `../common/`; you should not need to modify it.

Export the required entry points so that the firmware can call into your Jasmin
code:

- `crypto_stream_chacha20_ietf`  
- `test_quarterround`, `test_column_round`, `test_diagonal_round`  
- `test_chacha20_block`, `test_chacha20_keysetup`, `test_chacha20_ietf_ivsetup`,
  `test_chacha20_encrypt_bytes`

## Deliverables

Your submission should include:

- Updated `src/chacha20.jazz` with a correct, constant-time implementation. If
  your implementation does not fully work, please state which parts are expected
  to fail. 
- Cycle counts for your implementation. 

## Working on the Assignment

The structure closely follows the one for assignment0.

## Resources

- RFC 8439, Sections 2.1-2.4 - authoritative specification and reference
  vectors.  
- `reference/chacha20_primitives.py` — pure Python version of each round; useful
  for step-by-step comparison.  
- `common/TESTING_GUIDE.md` — instructions for running the test suite on
  hardware and QEMU.  
- Jasmin documentation (see repository root README) — language reference and
  tooling tips.
