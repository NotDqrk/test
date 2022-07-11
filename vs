void unlock()
    {
        uintptr_t num = (g_Vars->gOffsets.unlockAll + 0xC);
        int num2 = mem::readMemory<int>(num);
        
        uintptr_t UnlockOffset = num + num2 + 4 - g_Vars->moduleBase;
        uintptr_t numP = (g_Vars->moduleBase + UnlockOffset + 0x60);
        
        memcpy((BYTE*)numP, (BYTE*)xorstr_("\x48\x83\xC4\x08\x48\x8B\x5C\x24\x30\x48\x8B\x74\x24\x38\x48\x83\xC4\x20\x5F\x48\xC7\xC0\x01\x00\x00\x00\xC3"), 28);
        mem::writeMemory<uintptr_t>(g_Vars->moduleBase + UnlockOffset + 8, numP);
        mem::writeMemory<uintptr_t>(g_Vars->moduleBase + UnlockOffset, g_Vars->moduleBase + UnlockOffset);
    }
