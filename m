Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1F214D26
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E7F68703D;
	Sun,  5 Jul 2020 14:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMbRxRv7BZM3; Sun,  5 Jul 2020 14:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26CA186FF1;
	Sun,  5 Jul 2020 14:36:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA6881BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D51E0887D3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwJGyF4hfmOs
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E74CE887B3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:02 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id e13so32670123qkg.5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9qOIS7FysJjxYhMUKODLwP7LqaxcMhVCvitGJEvBYFs=;
 b=eCjXVGVmbJCG1sagUqqWn1VTcN36Fl0oMXDmxAxlUa6/2sBPYGljovxy7ZToeCo9xJ
 pNMqCTr2tYlkjDUl1fP9bpU2TiTAixe7Z5PkSetSI67dq0JL5zuqLUY48R5y8/5wjOHE
 7c593wIFjdjKdv8aeTAkbocAHEHRq2QE/srKNEDDShJWzchs8XESp+6vMDTAuYcy/c3q
 pST/a5lE65hvzA8OATY+PEhyX7nVcx6W75u65FGOPa4AD/F6hke9RjnCNmfMsMf2jK9n
 WtPVfW87Nc7l9At7LNKGxPeHW5sDSr62jIfUc03zt/cMQVqWUHTeMgKNgDTCqJGM5+x9
 Q9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9qOIS7FysJjxYhMUKODLwP7LqaxcMhVCvitGJEvBYFs=;
 b=FLg8q+eVIsWGzvCR3zKA54Zg5LffJNwsDdLEtRyVkWqky+WG1PYGz6QPDLghmEFfs+
 ZsZyCLBNri97iV/X0c6y3vvI9ALKlHCLtN4Zu9hreutGH3NLexMqTxEMZi6Lgr0rrQga
 fIhQ3kyXxgG7Oe9hbxjt3YY8dz+Wtv5Pl8E+fXu+sErcmOGLESZlK4FlafbTByY4XY8V
 GmR+x/xrI0S+TG5s5Och+L1ng/mm5sCNCDWaRb7lWRirMg8/Bd63zuz3l4VMGi9/hzwp
 GeUZoKoZF3nNEZkr2PFjz0IEGVPWGxC8PoQt4WG8QrW1bWgDh7Cv1Fjvem2O43090zLY
 W+iw==
X-Gm-Message-State: AOAM532dCDXGJLmBCsSX4s8u1EcLWIuOqK9qDD6wJli1jpSanV7O19Dh
 jwUpDUPvxDjZ3DMDCVG86sA=
X-Google-Smtp-Source: ABdhPJwOCTHMl1x5I9Y3L8eqnK7xLzI3UozDcablxqe+PZuww1ezPnjQAFyANL3qIVMeqBbjs15WBg==
X-Received: by 2002:a37:9a96:: with SMTP id
 c144mr43002442qke.207.1593959761899; 
 Sun, 05 Jul 2020 07:36:01 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:01 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 0/5] Code simplifications
Date: Sun,  5 Jul 2020 11:35:47 -0300
Message-Id: <20200705143552.9368-1-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

This series applies some code enhancements to rtl8712 staging driver.

Fixed the last commit as reported by kernel test robot <lkp@intel.com>.

Mauro Dreissig (5):
  staging: rtl8712: Replace constant 49152 with expression 48 * 1024
  staging: rtl8712: Simplify expressions with boolean logic
  staging: rtl8712: Use ETH_ALEN instead of hardcoded value
  staging: rtl8712: Remove variable 'raw' from rtl871x_open_fw()
  staging: rtl8712: Use proper format in call to dev_err()

 drivers/staging/rtl8712/hal_init.c     | 18 ++++++++----------
 drivers/staging/rtl8712/osdep_intf.h   |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c |  5 ++---
 3 files changed, 11 insertions(+), 14 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
