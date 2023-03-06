pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

component main = Multiplier2();

// Circuit -> WASM (compiled circuit)
// Input + WASM -> Witness (set of inputs, intermediate signals signals and outputs)
// Witness + R1CS (contains the constraints describing the circuit) -> Public Parameters (Proving key + verification key)
//   Note: With Groth16 protocol, we need a trusted setup to generate the pp
//   Two steps: (1) the powers of tau (2) the phase 2 that's circuit specific
// Witness + proving key -> Proof + Public input/outputs
//   Note: In the example, public.json is just the output, 33
// https://docs.circom.io/getting-started/proving-circuits/#verifying-from-a-smart-contract