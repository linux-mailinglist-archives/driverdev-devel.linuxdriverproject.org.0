Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D1618DE7D
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:27:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC661886F3;
	Sat, 21 Mar 2020 07:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Cw5vcewafYa; Sat, 21 Mar 2020 07:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD6518864B;
	Sat, 21 Mar 2020 07:26:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 246C11BF2B9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DE35876C3
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0xexw5Laqg8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A715986C5E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:54 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f3so10060912wrw.7
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 00:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJ66nNFxU6soSo0c67WaERFrIttHVrnCYYVmc4khQew=;
 b=WcWzcRv6VT1zuD2Iwpo8NgH8PwqisHtWquBMMEfiIVdslgx7jsk9G648ElGVn3+lTw
 a1lRpiky2FGr2Hv5uWYChviZVVmIQTXJl1P+Tm1GY0jV2fT1doERpI8jIRahl3NSbGXh
 1j3S3AMYaYX/R2DLl+0eqZTHPXnRZcewRiMhmMjQIrryeCPQ4Rv9TPTNoEtFV3Gd0IAd
 JPsmKpbHx0q6zE3zyK1d16QqcpXbObHT8xDic8922bmOiBwg1O3MQnzqK7iSeobpNDVC
 PwgkH5kjDLea2VTq7BPNN7DkYITfawhIrEurLaPuW67SviMw5DKPYESR7b9YKbHMsD+/
 IIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJ66nNFxU6soSo0c67WaERFrIttHVrnCYYVmc4khQew=;
 b=efYLYgNCPIdyotRnoc3IlLqrMf0xBXxcJRarc4w9yGtS2A5jAct2pc2QVElV4RyOdC
 KBAZYPfPlqE+aKef5IB17u4gNZavbZ3aiK3KZZs9j+DZkdh5dMO23tDXmhLZGkuGKCv+
 1ip5AFwpDd6u59vLcLXA3l9FDR+GogxexWHc6EVzjLRTZACDCvU53BFqEOkj4jddTLt+
 Yhru28egBDmkAud7ayQC1q8kaLnzPJvNdls5Bzb4FJgtoWSHWO66oaDIH2F8turDkR3+
 93S+L0luC3IVmVGpQl0QcFUyuZCn9kyvlv5uERx5i2gStgf9P2hh2dxdufVm84ZI/+Ez
 2ldA==
X-Gm-Message-State: ANhLgQ1MI8GmksmYf06upVFjkEmslZRSPlwfo8916SibVVHh5ZxhIk4I
 NUUJfxcWkyyJsicSu1bWgr8=
X-Google-Smtp-Source: ADFU+vsepU1g78EQ4XaiahOjgpdcWk0XT8o9xYB8+chM0e2+PfYLBMZTpy2zV3FwCqqj6cBcnXvhfg==
X-Received: by 2002:adf:ab12:: with SMTP id q18mr16328238wrc.148.1584775613132; 
 Sat, 21 Mar 2020 00:26:53 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id w67sm10723126wmb.41.2020.03.21.00.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 00:26:52 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: mt7621-pci: make gpios 8 and 9 vendor specific
Date: Sat, 21 Mar 2020 08:26:48 +0100
Message-Id: <20200321072650.7784-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to this:
* http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142533.html

Gpio's 8 and 9 must be vendor specific and properly be set up
in device tree specific vendor file.

After this changes release part in the driver is not needed anymore
because we rely in the fact that device tree is correct.

This changes have been tested in a gnubee pc1.

Sergio Paracuellos (2):
  staging: mt7621-dts: gpio 8 and 9 are vendor specific
  staging: mt7621-pci: delete release gpios related code

 drivers/staging/mt7621-dts/gbpc1.dts    |  4 ++++
 drivers/staging/mt7621-dts/mt7621.dtsi  |  4 +---
 drivers/staging/mt7621-pci/pci-mt7621.c | 27 +++++++------------------
 3 files changed, 12 insertions(+), 23 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
