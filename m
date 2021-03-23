Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54856345D9C
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:06:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9377683ED8;
	Tue, 23 Mar 2021 12:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MdmAlUv_PJQk; Tue, 23 Mar 2021 12:06:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B547183A97;
	Tue, 23 Mar 2021 12:06:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4FF61BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8DCB83A97
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WaL5xd0Migdz for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:06:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0D5A83A7A
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:06:08 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so12855294wmy.5
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=5A3Ab9JEMCBsRsVxBrOyI0S/pK42lF/JqjHO5w3aGMA=;
 b=mEmHuF/RZWbCfJmjbVmbCzY01R+08VE/tgHr7Dyq27bbbbB0r5YVPHDBUxqTAE2uIr
 4oFMfxkaLmG5y/Oo/hks9aWr9YJ6kywfiHGVtAOLl8PeK5QhU/p8t6A+45K+kGdjSNyZ
 nZWwSuxkacvG6k6k40SYzJBJjEefGT34keGKNWcNP7ou4PbbSkGIy/iatetXDHC9vydX
 NhIgCMRgklOUsnJDe2TGqwwHBjXlhNlJ/HcusmzwQq03EBSmU5a4Iz9+x4XDXujSbh3g
 nIkhDgp1p4BJ5NkkwrsTJ/NQW6lzkzWDcjA70ML+V9XkJ5cwc3naLsCBYlY8PjOFfSue
 mY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=5A3Ab9JEMCBsRsVxBrOyI0S/pK42lF/JqjHO5w3aGMA=;
 b=rpfFQNtgVMQaBoWshLKU+7XGfQyxyUAGbR4Ft78KDm6mshu/LLh5a0HHRanMwEy3x5
 pbFRFc26Ik5PMYsDMztj482uqtojAzTGnfJwHUDleuRLrblyTXiJ+sbrXPwXUT7cefW8
 x84Lxx4ZvcLawmsJlQLQLxv25D2HHxeSEMQD6MyB15wkikoy1eLkkzKgf100YKaWTcUc
 JnZNHGqfkVnIIiTKpZYB7pyRgeNmjYRh7YOfNI5hNKXuKbhLS/srilaHzoPrLcPhYkUM
 jLCnty1SSs9r0t89AU0mWtJ0w0hzeU4q5ioX6iLX24wiGiJ27RQvLuaZnYoTsnCepj/T
 GTNw==
X-Gm-Message-State: AOAM531AHndMuSoaI9le7nzbrMLduCMt7oubc61j2GyrF/bCQ8C/srNZ
 xHu44MKnEtALz5R6/PQZ0CM=
X-Google-Smtp-Source: ABdhPJwTexvTC/0ftGktlFifpBfSPbyVrg40L1J1SkxHp/hIEMcszPKeXblNA/eb9Dwauj4YIcR12g==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr3013565wmj.176.1616501167141; 
 Tue, 23 Mar 2021 05:06:07 -0700 (PDT)
Received: from [93.173.65.134] (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id u23sm2532725wmn.26.2021.03.23.05.06.05
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Tue, 23 Mar 2021 05:06:06 -0700 (PDT)
Message-ID: <6059D983.5080306@gmail.com>
Date: Tue, 23 Mar 2021 14:05:23 +0200
From: Eli Billauer <eli.billauer@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
 rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com> <YFc65bvAN3/ZNsww@kroah.com>
 <6058792C.90801@gmail.com> <YFh7dlY9cntgoLXD@kroah.com>
In-Reply-To: <YFh7dlY9cntgoLXD@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org, arnd@arndb.de,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22/03/21 13:11, Greg KH wrote:
>
>> XILLYBUS and XILLYBUS_PCIE are currently enabled as M in several Linux
>> distributions. Making them depend on, rather than select XILLYBUS_CLASS is
>> likely to disable the driver in those distributions.
>>      
> That's not an issue here, depends-on will allow those distros to also
> enable this option.
>
> But wait, why is this a separate option at all?  Shouldn't the class
> code just be part of the "core" XILLYBUS code anyway?
>
>    
I'll try to explain the whole picture:

            XILLYBUS_CLASS
               /        \
              |          |
          XILLYBUS   XILLYUSB
       /           \
      |             |
XILLYBUS_PCIE  XILLYBUS_OF

XILLYBUS_CLASS is new and common to all drivers in this group.

XILLYBUS is for drivers based upon memory registers + DMA-based 
interfaces, and it's combined with XILLYBUS_PCIE and/or XILLYBUS_OF. 
XILLYUSB is for the USB variant only.

Or a more detailed, bottom-up outline:

* CONFIG_XILLYBUS_PCIE -> xillybus_pcie.c: Functions related to PCIe.
* CONFIG_XILLYBUS_OF -> xillybus_of.c: Functions related to Xillybus as 
a peripheral on an FPGA / Processor combo chip.
* CONFIG_XILLYBUS -> xillybus_core.c: Functions that are common to the 
two above, mainly access to the peripheral with memory-mapped registers 
and DMA.
* CONFIG_XILLYUSB -> xillyusb.c: The driver for the USB variant, 
accesses the peripheral through the USB framework.
* CONFIG_XILLYBUS_CLASS -> xillybus_class.c: The new module, which 
contains the class and API parts that would otherwise appear both in 
xillybus_core.c and xillyusb.c. Contains utility functions for the two 
latter.

Because XILLYBUS_CLASS is new and "N" by default, making a "depends on" 
relationship means that "make olddefconfig" silently turns off 
CONFIG_XILLYBUS and CONFIG_XILLYBUS_PCIE. That's a bug: Adding a new 
driver shouldn't change anything in the existing configuration.

That's why I had the "select XILLYBUS_CLASS" to begin with: It ensures a 
smooth transition on a kernel upgrade, by adding XILLYBUS_CLASS to 
kernels that had CONFIG_XILLYBUS enabled. Is there another way to 
prevent the said bug, without "select"?

Thanks and regards,
    Eli
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
