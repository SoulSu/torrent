// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This file exposes various internal runtime functions to other packages in std lib.

#include "zasm_GOOS_GOARCH.h"
#include "../../cmd/ld/textflag.h"

#ifdef GOARCH_arm
#define JMP B
#endif

TEXT time·runtimeNano(SB),NOSPLIT,$0-0
	JMP     runtime·gonanotime(SB)

TEXT time·Sleep(SB),NOSPLIT,$0-0
	JMP     runtime·timeSleep(SB)

TEXT time·startTimer(SB),NOSPLIT,$0-0
	JMP     runtime·startTimer(SB)

TEXT time·stopTimer(SB),NOSPLIT,$0-0
	JMP     runtime·stopTimer(SB)

TEXT sync·runtime_Syncsemacquire(SB),NOSPLIT,$0-0
	JMP	runtime·syncsemacquire(SB)

TEXT sync·runtime_Syncsemrelease(SB),NOSPLIT,$0-0
	JMP	runtime·syncsemrelease(SB)

TEXT sync·runtime_Syncsemcheck(SB),NOSPLIT,$0-0
	JMP	runtime·syncsemcheck(SB)

TEXT sync·runtime_Semacquire(SB),NOSPLIT,$0-0
	JMP	runtime·asyncsemacquire(SB)

TEXT sync·runtime_Semrelease(SB),NOSPLIT,$0-0
	JMP	runtime·asyncsemrelease(SB)

TEXT net·runtime_Semacquire(SB),NOSPLIT,$0-0
	JMP	runtime·asyncsemacquire(SB)

TEXT net·runtime_Semrelease(SB),NOSPLIT,$0-0
	JMP	runtime·asyncsemrelease(SB)