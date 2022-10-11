Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0975A5FBB77
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Oct 2022 21:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7718B832D9;
	Tue, 11 Oct 2022 19:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7718B832D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vq6PJslRdSSO; Tue, 11 Oct 2022 19:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF2B683312;
	Tue, 11 Oct 2022 19:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF2B683312
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77D801BF855
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 19:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 535FD832D4
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 19:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 535FD832D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJLmhmgy-WkH for <devel@linuxdriverproject.org>;
 Tue, 11 Oct 2022 19:43:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15D70832D9
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15D70832D9
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 19:43:49 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id u21so21594892edi.9
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 12:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:content-language:to
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NlHJwLaMDhDTdTKlGZK8FZFjyy12WaE0ztYy+V2bUmY=;
 b=e1h9wYskcqzX8ThhccxdNH7smGftoeoU2otaBGzJ1+0JDA+kg4KVYe0It9RqAImZMH
 exwCHD0VodPx1BBSu0vj80DtxpB59Af1NWfq0UjEERENUbImcIgf3gOQaM+XQVq5n3vF
 4F2Vwv1epvCp9j/CFe66tR+hf3x5kLQObgcx7sfqpSrLka0g8xoG8hly1GctPftLkkxX
 wVXzqNBGjPfuG5P5k9/6ftXTRrmUoZLyizXKb/rsTXitbbD/LUNdSp7YtoktQ/84fdqj
 blu6aQMKQOJLVKBcKhpM+0poh7JMEn7CD9hv/oRnUggIZOpROOBarpaQGnl/Q4p4osZn
 XffQ==
X-Gm-Message-State: ACrzQf13L+3/eTn3OWvx4d2xsLF4SoBpYGWciSwCIoMEBSEZiWH5+WrI
 IWvYtGckfNwijwYEyfmzbT11zl4HAOch8w==
X-Google-Smtp-Source: AMsMyM5nGC3RGd3ucu0WrRJn7EIVgP2n2du33uaG1tWzVLocVUZ200i/ad5Ef+aro4rl0kVUuzNP2w==
X-Received: by 2002:a05:6402:84d:b0:454:f41d:6ccf with SMTP id
 b13-20020a056402084d00b00454f41d6ccfmr23847021edz.129.1665517428142; 
 Tue, 11 Oct 2022 12:43:48 -0700 (PDT)
Received: from ?IPV6:2003:c7:8f3e:6a25:da79:77b5:fd5d:5e3f?
 (p200300c78f3e6a25da7977b5fd5d5e3f.dip0.t-ipconnect.de.
 [2003:c7:8f3e:6a25:da79:77b5:fd5d:5e3f])
 by smtp.gmail.com with ESMTPSA id
 gv15-20020a170906f10f00b0078ae49ad169sm151822ejb.91.2022.10.11.12.43.47
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Oct 2022 12:43:47 -0700 (PDT)
Message-ID: <13a3f198-2ed1-df35-844d-9f7465de9f0c@gmail.com>
Date: Tue, 11 Oct 2022 21:43:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: devel@linuxdriverproject.org
Content-Language: en-US
From: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: Missing patch for Partial crash when loading driver rtl8192e
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:subject:from:content-language:to
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NlHJwLaMDhDTdTKlGZK8FZFjyy12WaE0ztYy+V2bUmY=;
 b=kzQN7ddE96bdyBif+Raw6IFhBAjYxWYWlKVlhHkKXPB3T08rnQWyUlSrDUnPjjXXgK
 tlyPK3o/242HY2JWKZcX5qLG/NQn7adhLiikNi8EccknJNSU/CtR0XyLoSUUFpvLkeJI
 g5LqUrIKlqUyqrcJ+4y1+16ra1bnppyacHDtCIHYSx3AolyLBprnlHDMUFmUpEFTVIBh
 ap5nkxeCXqKirHMUd2qKKRVZJSz35qf2xxbrnVkIIMWi4OnCDphXoavLBoBmgW5e5/nD
 Kfys9zB/ATHTO7RRzgX2BXCjaHj/xmUNOCPQwUhb8UvPRM62eovhZOvvPxpCOu8WFkoK
 aAgg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kzQN7ddE
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

yesterday I did a git pull.

when I tried to load the driver rtl8192e I had the below partial crash.

I was able to fix it with this patch:

https://lore.kernel.org/netdev/20220926233458.5316-1-yin31149@gmail.com/

Thanks for your support.

Bye Philipp


This has worked before. But now I get this in my dmesg
[  224.792852] ------------[ cut here ]------------
[  224.792856] memcpy: detected field-spanning write (size 8) of single 
field "&compat_event->pointer" at net/wireless/wext-core.c:623 (size 4)
[  224.792869] WARNING: CPU: 3 PID: 1408 at net/wireless/wext-core.c:623 
wireless_send_event+0x41f/0x470
[  224.792876] Modules linked in: r8192e_pci(COE) rtllib(COE) lib80211 
xt_conntrack xt_MASQUERADE nf_conntrack_netlink nfnetlink xfrm_user 
xfrm_algo xt_addrtype iptable_filter iptable_nat nf_nat nf_conntrack 
nf_defrag_ipv6 nf_defrag_ipv4 libcrc32c bpfilter br_netfilter bridge stp 
llc overlay nls_iso8859_1 snd_hda_codec_hdmi snd_hda_codec_conexant 
snd_hda_codec_generic ledtrig_audio intel_rapl_msr intel_rapl_common 
x86_pkg_temp_thermal intel_powerclamp coretemp sch5627 mei_hdcp 
kvm_intel i915 kvm rtl8192se snd_hda_intel rtl_pci snd_intel_dspcfg 
rtlwifi snd_intel_sdw_acpi snd_hda_codec snd_hda_core mac80211 
crct10dif_pclmul ghash_clmulni_intel drm_buddy snd_hwdep aesni_intel ttm 
snd_pcm crypto_simd drm_display_helper cryptd snd_seq_midi cec rapl 
sch56xx_common snd_seq_midi_event intel_cstate input_leds rc_core 
snd_rawmidi cfg80211 joydev drm_kms_helper serio_raw at24 efi_pstore 
snd_seq i2c_algo_bit fb_sys_fops snd_seq_device mei_me libarc4 
syscopyarea snd_timer sysfillrect mei snd sysimgblt
[  224.792925]  soundcore mac_hid tpm_infineon sch_fq_codel ipmi_devintf 
ipmi_msghandler msr parport_pc ppdev drm lp parport ip_tables x_tables 
autofs4 hid_generic usbhid hid e1000e crc32_pclmul i2c_i801 i2c_smbus 
xhci_pci lpc_ich ahci libahci xhci_pci_renesas video wmi
[  224.792943] CPU: 3 PID: 1408 Comm: wpa_supplicant Tainted: G C OE 
6.0.0+ #13
[  224.792945] Hardware name: FUJITSU ESPRIMO P710/D3161-A1, BIOS 
V4.6.5.3 R1.16.0 for D3161-A1x 10/29/2012
[  224.792947] RIP: 0010:wireless_send_event+0x41f/0x470
[  224.792950] Code: 13 fe ff ff b9 04 00 00 00 4c 89 ee 4c 89 4d c0 48 
c7 c2 f0 c1 2d 9f 48 c7 c7 d0 13 1c 9f c6 05 62 99 e9 00 01 e8 c8 4d 04 
00 <0f> 0b 4c 8b 4d c0 e9 e2 fd ff ff 0f 0b be 01 00 00 00 4c 89 e7 e8
[  224.792952] RSP: 0018:ffffb93f40aebd10 EFLAGS: 00010282
[  224.792954] RAX: 0000000000000000 RBX: ffffffff9ef60d70 RCX: 
0000000000000000
[  224.792955] RDX: 0000000000000001 RSI: ffffffff9f1ec889 RDI: 
00000000ffffffff
[  224.792956] RBP: ffffb93f40aebd90 R08: 0000000000000000 R09: 
ffffb93f40aebb78
[  224.792957] R10: 0000000000000001 R11: 0000000000000001 R12: 
ffffa0a5ed55b900
[  224.792958] R13: 0000000000000008 R14: ffffa0a5ed55b400 R15: 
000000000000000c
[  224.792959] FS:  00007fef3baf5140(0000) GS:ffffa0a616380000(0000) 
knlGS:0000000000000000
[  224.792961] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  224.792962] CR2: 000056196d1dc400 CR3: 000000010891a003 CR4: 
00000000001706e0
[  224.792963] Call Trace:
[  224.792965]  <TASK>
[  224.792969]  ? _rtl92e_wx_set_freq+0x65/0x7b [r8192e_pci]
[  224.792978]  ioctl_standard_call+0x76/0xe0
[  224.792981]  ? iw_handler_get_private+0x70/0x70
[  224.792982]  ? call_commit_handler+0x50/0x50
[  224.792985]  wireless_process_ioctl+0x13f/0x1a0
[  224.792989]  wext_handle_ioctl+0x9e/0x100
[  224.792991]  ? __switch_to+0x11d/0x440
[  224.792995]  sock_ioctl+0x1da/0x300
[  224.792999]  ? debug_smp_processor_id+0x17/0x20
[  224.793002]  __x64_sys_ioctl+0x95/0xd0
[  224.793007]  do_syscall_64+0x3b/0x90
[  224.793010]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  224.793013] RIP: 0033:0x7fef3b7223ab
[  224.793015] Code: 0f 1e fa 48 8b 05 e5 7a 0d 00 64 c7 00 26 00 00 00 
48 c7 c0 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 
05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b5 7a 0d 00 f7 d8 64 89 01 48
[  224.793016] RSP: 002b:00007ffe37cb5818 EFLAGS: 00000246 ORIG_RAX: 
0000000000000010
[  224.793018] RAX: ffffffffffffffda RBX: 000000000e774ee0 RCX: 
00007fef3b7223ab
[  224.793019] RDX: 00007ffe37cb5820 RSI: 0000000000008b04 RDI: 
0000000000000009
[  224.793020] RBP: 000056196f303db0 R08: 00000000ffffffff R09: 
000056196f329210
[  224.793021] R10: 000056196f328c98 R11: 0000000000000246 R12: 
00007ffe37cb5820
[  224.793022] R13: 00000000ffffffff R14: 0000000000000001 R15: 
000056196f303dc8
[  224.793025]  </TASK>
[  224.793026] ---[ end trace 0000000000000000 ]---
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
