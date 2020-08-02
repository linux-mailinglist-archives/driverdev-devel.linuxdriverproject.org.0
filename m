Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 067ED235614
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 11:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4279B2048C;
	Sun,  2 Aug 2020 09:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ViTrwOGnPiKj; Sun,  2 Aug 2020 09:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 156072042B;
	Sun,  2 Aug 2020 09:11:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9291B1BF421
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F4DE88031
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdZ6R9CynmUx for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 09:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C417E88026
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 09:11:07 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id 3so12811612wmi.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 02:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=GOI1c5bl4yi1L6tURgqekpW0DbIMIRV5G+t5vtGHdE0=;
 b=hFIyCvpCtd1mxT/D4FkEIfIU6U3xn8HiZP7ovOg54nSjLKPMh5L2rJTUCyXIfJsMG+
 YBtR9K9UDXgVlDIeVa3YDJ81GcPsEX8xlXOQoslRJW/1SuGDiADF8qqK41CHFjwtlKMf
 OQ88aAklXFuY8+xifkUjPfhvw//yWVDy1jO2ETxTpU/tJC9W6NneGFSl6M8zbFYhcugQ
 nZY/MggPKuch/IBGdLNjt8H7B570si91RiZdo9NVjWJRXVuqUIE28sKC8u42eBUfWnQe
 Rp+q/hJ9LVVrLM2Rrnh87twqtYsivrqdqF6bHV7Kz2qfKuMSqL8uJxFsUtvWWBceP2SF
 u3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=GOI1c5bl4yi1L6tURgqekpW0DbIMIRV5G+t5vtGHdE0=;
 b=VSPGgj0Av85qNELMQnCxPhfZ3FXBi3ZCOTNNzenp+qzhaFRCmgzd0+Wwrs2ksz1xLs
 tyHAI+Ie753+lFRc0bwmglyWaUOi3NN6BrCcqbCVJsorLjftHNCUjEg0nHpKpVPO8yp2
 pUvd2onswkDleVDe0P/nTiL8kemJW8Nb6ajNhAUm1AOWeX/qjq89yxcwhbel6X4XMoYM
 nvuqsVnugxjzNCcdFSA/loeAXdJmG7wwANIeLqVeQ2bKSEA9I+4efe8Jnwg4Rs2NG4aa
 cTUWjCV1QpFeLOMhKb02Y4KGQN3o7s1YpPl/k3QTf+VOGXhswiXjAslJF2MmOvJt4Z20
 yHsg==
X-Gm-Message-State: AOAM533D+5SFLiJChomKaqIfLb3sntLhPhwhAhLvQxeGmITrWhVgJQMb
 3uwoONIGXN6Tko1v+ZRqGXA=
X-Google-Smtp-Source: ABdhPJy0IaCw5tudXdRthaPZfo+L1dWA0JwCjDufgvThz+kikOQNka7zpENwXOeM6eepFTXqPo032Q==
X-Received: by 2002:a1c:7702:: with SMTP id t2mr5320261wmi.169.1596359465836; 
 Sun, 02 Aug 2020 02:11:05 -0700 (PDT)
Received: from [192.168.178.22]
 (dslb-002-204-142-085.002.204.pools.vodafone-ip.de. [2.204.142.85])
 by smtp.gmail.com with ESMTPSA id 126sm260904wme.42.2020.08.02.02.11.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Aug 2020 02:11:05 -0700 (PDT)
To: gregkh@linuxfoundation.org
From: Michael Straube <straube.linux@gmail.com>
Subject: staging: most: Build error since commit "drivers: most: add USB
 adapter driver"
Message-ID: <7c18e466-0941-ee7e-9a0f-5a993c993152@gmail.com>
Date: Sun, 2 Aug 2020 11:08:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

with commit 97a6f772f36b7f52bcfa56a581bbd2470cffe23d ("drivers: most: add USB adapter driver")
I get build errors.

$ LANG=C make clean drivers/staging/rtl8188eu/
scripts/Makefile.clean:15: drivers/staging/most/usb/Makefile: No such file or directory
make[5]: *** No rule to make target 'drivers/staging/most/usb/Makefile'.  Stop.
make[4]: *** [scripts/Makefile.clean:66: drivers/staging/most/usb] Error 2
make[3]: *** [scripts/Makefile.clean:66: drivers/staging/most] Error 2
make[2]: *** [scripts/Makefile.clean:66: drivers/staging] Error 2
make[1]: *** [Makefile:1763: _clean_drivers] Error 2
make: *** [Makefile:336: __build_one_by_one] Error 2

Did you forgot to remove the below line from drivers/staging/most/Makefile ?

obj-$(CONFIG_MOST_USB)	+= usb/


Regards,
Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
