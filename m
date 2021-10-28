Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ED043D93A
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Oct 2021 04:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03E4C60B38;
	Thu, 28 Oct 2021 02:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-L9gmBft1Ev; Thu, 28 Oct 2021 02:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75CA560676;
	Thu, 28 Oct 2021 02:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21EE41BF293
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 02:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B4C081A5C
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 02:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NWbb6N1UXEJ for <devel@linuxdriverproject.org>;
 Thu, 28 Oct 2021 02:15:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F2B48191E
 for <devel@driverdev.osuosl.org>; Thu, 28 Oct 2021 02:15:07 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id
 r25-20020a5d9b99000000b005de9c9abc68so3267267iom.12
 for <devel@driverdev.osuosl.org>; Wed, 27 Oct 2021 19:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=6yG8pcJo54/vxDX6p7Xpz0mDhkbXcuuHhQ0tF2/zx5g=;
 b=rQLG/bcRsJ5sMgEN573skuqGTGJ7S45WbIiozxhnzdHyYoJHKcAe6Tn5kR/LWHxGFt
 XhxKwpzVkMjR9nzBEiroCPBzOkUVf2+nQx3NEyOVRUqMY4VddsJKyh8Blpmmc7VVPR1S
 QtTj5Iq4rWuGkDsMCTH/9Mk1Aeh2GJBnzKqIlVSvbh3wVio34yVcz5gO/jiS7YHEcgzd
 7A8yfbsD6RkoNF74xHd0MzGHx6jTXUX58cZHgaLm/Fpd20/JpsrOiuyza0SdBacKz6HP
 aV1GQ+FRYyvEBl4DkcBgDoH2wHdChQ70T10BcFPxhlB2GFYPdymvrPsn9dwJ0QY02UYn
 bw+g==
X-Gm-Message-State: AOAM530Gk30M2i4dggBLhiMave9wgJjuSXs/BgcN9HppO4mFnjX5JMW5
 EHnG4D3Sj4kS3Jj83DUnkpuk+kHZSSa5E9fXsZrBiuzOtgHt
X-Google-Smtp-Source: ABdhPJzcSorb1KARbjJuazLmAfL+5SdTTWdZypcGX+Si7N9T1NNDXJ4DOpUfV3/jg9EUyHmPOXTHGnfR0KVgoFgwpLcLEWUEbWTC
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c4d:: with SMTP id
 d13mr1095444ilg.120.1635387306485; 
 Wed, 27 Oct 2021 19:15:06 -0700 (PDT)
Date: Wed, 27 Oct 2021 19:15:06 -0700
In-Reply-To: <0000000000000f73a805afeb9be8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000792dda05cf604775@google.com>
Subject: Re: [syzbot] BUG: spinlock bad magic in synchronize_srcu
From: syzbot <syzbot+05017ad275a64a3246f8@syzkaller.appspotmail.com>
To: bcm-kernel-feedback-list@broadcom.com, bhelgaas@google.com, bp@alien8.de, 
 dave.hansen@linux.intel.com, devel@driverdev.osuosl.org,
 f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, hpa@zytor.com, info@cestasdeplastico.com, 
 jmattson@google.com, joro@8bytes.org, kvm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-rpi-kernel-owner@lists.infradead.org, 
 linux-rpi-kernel@lists.infradead.org, lorenzo.pieralisi@arm.com, 
 mchehab@kernel.org, mingo@redhat.com, nsaenzjulienne@suse.de, 
 pbonzini@redhat.com, robh@kernel.org, sean.j.christopherson@intel.com, 
 seanjc@google.com, sfr@canb.auug.org.au, syzkaller-bugs@googlegroups.com, 
 tcs_kernel@tencent.com, tglx@linutronix.de, vkuznets@redhat.com, 
 wanpengli@tencent.com, x86@kernel.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzbot suspects this issue was fixed by commit:

commit eb7511bf9182292ef1df1082d23039e856d1ddfb
Author: Haimin Zhang <tcs_kernel@tencent.com>
Date:   Fri Sep 3 02:37:06 2021 +0000

    KVM: x86: Handle SRCU initialization failure during page track init

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=143e2b02b00000
start commit:   78e709522d2c Merge tag 'for_linus' of git://git.kernel.org..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=2150ebd7e72fa695
dashboard link: https://syzkaller.appspot.com/bug?extid=05017ad275a64a3246f8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10b72895300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14c42853300000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: KVM: x86: Handle SRCU initialization failure during page track init

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
