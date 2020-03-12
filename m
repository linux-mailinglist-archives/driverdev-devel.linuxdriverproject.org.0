Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD802182BB7
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:00:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5CF088AC9;
	Thu, 12 Mar 2020 09:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzVVbk63N2CZ; Thu, 12 Mar 2020 09:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9CFF8773D;
	Thu, 12 Mar 2020 09:00:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DB811BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49B2485F81
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0Zet9pAHUcl
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DE6E85F59
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:51 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id n18so6425689edw.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iYvwgX7aQXxzuLCh6g1lnJiEmNUJ95sIyPRracLR/MU=;
 b=ML0YUCGMVY1GOf/M7jkMngq3R+PEnGlx1kYo8A7piIMxsJXiPb1OIVAzJujPI5IC9y
 jxC6gacJt48qZrgDO8FhFfSPwmf6KwKF+6cFAG0Dw3CXcfDrzwVvFA5EgqaNDs9t7z48
 OkG7GfCl13Z1gBXmaETDovzwDFgJ7FFskuIu7Aln6FUNoA8dfdcQoTvv5FaG18Q5oJvL
 AfzJf/6LmiEQaifzNbxDOIHoUpmT8Au9OoArMYyUw2RLXAbxXa68KlMztWfiwU172mi0
 UG/Z7N4B0CnUdPw3fMh8g8BKkfUElBhC7cxVQMhTePbtVP45N1VrgHBTIqQPEV4pnjqM
 M8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iYvwgX7aQXxzuLCh6g1lnJiEmNUJ95sIyPRracLR/MU=;
 b=YaxAHgrHpM5sNjqDTegi0MK4uoFqgOn9M4nmXiE5OG6MdyNyiLhZMLNkUWPK5Gty7P
 o/F5WQfO97iSbE4PKqzPwxgJwSRdl6xQVaK8J9/5pEaldfJSc4PdM0FQSAqd4MYl57S0
 H0J0g8TJRAek4JdSYTxxiEQcXMOXQ37E3O+8YV5PKFYk+WGQJHW0prJRy8j6+0+2zAQX
 CVNXwQa0105wmaf1V8FS1+VD3oSR1r1z76j6ZJ/WTrTbWU4xRIfgPMAbU0QyAHfRpKE8
 I76RsLUenohcxJN5gVv2otqJ1ZJ1y0OQNrL+lbryjGERd/9j8esTjpf09B+MuUsRncZQ
 ztqQ==
X-Gm-Message-State: ANhLgQ3Uux9WdIV1NKuOiGXHMCnTnQC54mVvkgKAeS45OTxceKmm15XN
 IXBa59WnMFD+cYV/QfJvK3A=
X-Google-Smtp-Source: ADFU+vvJMtM2xgVJ8fQXYy1xjnNm6F1m9g6tgWAhHu0x2LwicGKmTT+0mDXFl76TdeYcDVSnUhY5kg==
X-Received: by 2002:a17:906:c78c:: with SMTP id
 cw12mr5615751ejb.171.1584003649722; 
 Thu, 12 Mar 2020 02:00:49 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:48 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 0/5] staging: mt7621-pci: re-do reset boot process
Date: Thu, 12 Mar 2020 10:00:41 +0100
Message-Id: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some time ago Greg Ungerer reported some random hangs using
the staging mt7621-pci driver:

See:
* http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html 

Try to fix that is the main motivation of this patch series.

Also in openwrt there is a driver for mt7621-pci which seems was rewritten
from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek. 
There the approach for reset assert-deassert process is to set as 'gpio'
the function for all the 'pcie' group for the pinctrl driver and use those
gpio's as a reset for the end points. The driver I am talking about is still
using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
to do is make this staging driver properly clean and functional and put it
in its correct place in the mainline.

See:
* https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36

Because of all of this this patch series tries to avoid random hangs of boot
trying to use the 'reset-gpios' approach.

Changes are being tested by openwrt people and seems to work.

Hope this helps.

Changes in v3:
    * Avoid to fail if gpio descriptor fails on get.
    * re-do PATCH 1 commit message.
    * Take into account gpio low polarity on request and assert and deassert.
    * Review error path of driver to properly release gpio's resources.

Changes in v2:
    * restore configuration for pers mode to GPIO.
    * Avoid to read FTS_NUM register in reset state.
    * Release gpio's patch added

Best regards,
    Sergio Paracuellos

Sergio Paracuellos (5):
  staging: mt7621-pci: use gpios for properly reset
  staging: mt7621-pci: change value for 'PERST_DELAY_US'
  staging: mt7621-dts: make use of 'reset-gpios' property for pci
  staging: mt7621-pci: bindings: update doc accordly to last changes
  staging: mt7621-pci: release gpios after pci initialization

 drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
 .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
 drivers/staging/mt7621-pci/pci-mt7621.c       | 107 +++++++++++-------
 3 files changed, 80 insertions(+), 45 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
