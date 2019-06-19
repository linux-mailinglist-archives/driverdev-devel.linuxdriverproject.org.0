Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBA84B340
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:45:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E484186FC3;
	Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzproRVCb1GC; Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74BB086D52;
	Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED2771BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA1EB86416
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvi0nr2lNMqF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3619C85D00
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h19so3980783wme.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/uwGKh35dveTIDkVXQH3sBhs/f0Gm8Af8TdFdiFUXk=;
 b=ZhCY3K0ko4Heh98hr6dK0zr8pr/Nu4IfNuZII1qjUR640p29M05Od7LxNyre/daeZg
 p2nWkt9Onlx8oMqewC+A53E9o2xbXzKxfEPmffRpb2AsJ1CC5AlrRjXoALFrZ10PybA0
 3mdPb5n9jHhRHuA10FheAn11ew0NSI4eR5jZT7gQZiXOma0exCChvXUpgUodKBU58uS7
 I7LlLIjo+AtUVLQh1qoPsLRq7Vnz7oi+2x7jX6tGaPL83W3GJcp0Ldhdd7Ed6aFuRElb
 taI6xqaH2aNzvPpMd94GZel4gxbWjVlsHmBr0fAToD8ZAliS8yNtx+vMp6d114uv3ob2
 0DRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/uwGKh35dveTIDkVXQH3sBhs/f0Gm8Af8TdFdiFUXk=;
 b=kh0IYimmp96cDu1CWHAfzZRiMRfte8mcUAzzCCYLgQSCzHw33MHZ3G2L0UL8xWCErl
 Kn3KmxtveVrkM54nySoBCzNeQ1S1QdIS/eEkB85tkxClWD2DJRS4NskjzcbA6R1JOfQi
 oLmRaIkOU6+Q23qRGEnVRKCjcq9m7WBUXg8hvq60yoIABGPjx7WbTFHiBCxbLAwTqA6x
 5UZHkk5+0RGBqPrXdLnZprm0lcbTDCz0i7JcZCmaeg3Owq9WvF37UwUgU+P9sCOsLZnE
 XUFHJ5xge2dstmetWrNxqKRjYXc6ehniNa2toB413IE88kfZc1tL9O/zR++UIG1TBHls
 k14A==
X-Gm-Message-State: APjAAAU/9n8UOxJqJu8C+kK8tTG9X/lpedJa4U/2PZkpGrrpirgsGEro
 ajhwB4WdFEho5C4rHXGwav8=
X-Google-Smtp-Source: APXvYqxtMBBkXwKQeNq8uJB6p24cPN0knBUW4FWp8zVe85B23Cb9J/Lh+ZkZGOkz1NYM+ThDwmA5rA==
X-Received: by 2002:a1c:18a:: with SMTP id 132mr1238075wmb.101.1560930300742; 
 Wed, 19 Jun 2019 00:45:00 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id j7sm17925440wru.54.2019.06.19.00.44.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Jun 2019 00:45:00 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] staging: mt7621-pci: Use gpio perst instead builtin
 behaviour
Date: Wed, 19 Jun 2019 09:44:54 +0200
Message-Id: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Some boards seems to ignore builtin perst configuration and use gpio
instead. This approach seems to be more common. Hence, update the driver
to properly use gpio perst via gpio descriptor's API.

For more information refer to [1].

Even with this set of patches applied, there still seems to have some issues
with a non stable pci link through the boot process. This will be resolved
in nest patch series when the problem is find.

Patches are only compile-tested. It would be good to test them before being 
applied.

[1]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html

Sergio Paracuellos (4):
  staging: mt7621-pci: fix two messages in driver code
  staging: mt7621-pci: use gpio perst instead of builtin behaviour
  staging: mt7621-dts: add gpio perst to pcie bindings node
  staging: mt7621-pci: dt-bindings: add perst-gpio to sample bindings

 drivers/staging/mt7621-dts/mt7621.dtsi        |   2 +
 .../mt7621-pci/mediatek,mt7621-pci.txt        |   2 +
 drivers/staging/mt7621-pci/pci-mt7621.c       | 108 ++++++++++--------
 3 files changed, 63 insertions(+), 49 deletions(-)

-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
