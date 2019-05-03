Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AE4132A2
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 18:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31C3F86A4F;
	Fri,  3 May 2019 16:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0cRmGumc2fc; Fri,  3 May 2019 16:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60FB686972;
	Fri,  3 May 2019 16:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33B2D1BF3D1
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 16:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30B48869FD
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 16:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFvcsqJyCarY for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 16:58:50 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B25F086972
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 16:58:49 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id a8so6792284edx.3
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 09:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AXsO3p3XUOOmEOW3jRK4tuWsEU6SSZDBzlNLxQJuMU=;
 b=wkVjK/gSjX4MySF1NCzYupRTUFLjtYQV9SaFTglc9wSA+nkRWLvtBg0xwv4eW5cAlY
 vcpfjWHs4mcdk0jp6RUNqGuHAnI7aY4Nsie89PlRMHpXGKRw9Up/XOLHDKI0BGCnHpQC
 cT7PUe4NPDtxcJ3AO/kT1HmxEKMp6z+hvaH4rZGXVLKloq8APDd6/rOD/zXRJF9e4ONI
 J4vJRPmVpKl0OgiHJ20BrjM77FZwxY3JhnCbL9/CvZLcMx4Z/pNujgU4m7ZBwMpjkt6O
 9W7PLmO3Hbc/6l9ce5pJ9pbz8ZI7ZRXqxAF2WFo8+zmbU1+fbRHNN2hIW2g3JlM4hYbG
 qKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AXsO3p3XUOOmEOW3jRK4tuWsEU6SSZDBzlNLxQJuMU=;
 b=Y48pkfjptgSsOzVN5E371/8de3MjP4GXOhYCur7YaofbXY5ZZP3/SMNiJIuBwudXvJ
 JNMYQJi5BNLAi5pPbjm91LnZSuFVzY8A6GecnQOMcXMDlV5p0NC3tFIN86Rxclqp02PW
 0nCtL90H3WHeX73QkPfBD1269H3ZgkK4TBrH1yGLvOaVa4Bkpg6PZdAc5lsbMX7mHzOK
 Pc482kvxIsJSkAwfQDswWanaHZRmrYX1Wyr0j20tKcbi2ghuHH/iU+pp17XmbDONeD+R
 5ogiw1L6C5JSbLIkfSTR1VRh65mG/MwqforKUkzQ1Wo0W3UgoVWvWnXZkns6u+Cw2zqS
 1TOQ==
X-Gm-Message-State: APjAAAVUw1xzlcMhvPtPq6vQyNvqCPGedRWZLG3s0/RU59ALSf11J4V8
 he8HwoUESxAuyjD4zFWjcddXAw==
X-Google-Smtp-Source: APXvYqznu+dw1Grq076eKc24OB56ZD8jrVot65g+y4tMEPBdS1clOnUBiCr/w9GC71Y/gWnsR9JnDw==
X-Received: by 2002:a17:906:e10e:: with SMTP id
 gj14mr7324252ejb.285.1556902425262; 
 Fri, 03 May 2019 09:53:45 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:44 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
Date: Fri,  3 May 2019 17:53:37 +0100
Message-Id: <20190503165342.30139-1-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V6 RESEND:
- Adding Greg to sender list. Greg looks like you are the right person to
  apply this.

- Adding devel@driverdev.osuosl.org to sender list

- History:
  https://www.spinics.net/lists/arm-kernel/msg723454.html
  https://www.spinics.net/lists/arm-kernel/msg723321.html
  https://www.spinics.net/lists/arm-kernel/msg722655.html
  https://www.spinics.net/lists/arm-kernel/msg722449.html
  https://www.spinics.net/lists/arm-kernel/msg722441.html
  https://www.spinics.net/lists/arm-kernel/msg722350.html

V6:
- Drop BV_ prefix from u-boot timing defines
- Add RB Leonard

V5:
- Adopt u-boot method of calculating timings.
  On the basis that the OTP registers have a programming time that is not
  related to the ipg_clk rate specify the various timing inputs to the
  RELAX, STROBE_READ and STROBE_PROG as-is done in u-boot.

  The wait time to burn a given OTP fuse is not documented anywhere except
  in code in u-boot.

  The ipg_clk then is used to clock the registers in the OCOTP block and to
  tell the OCOTP block how long to wait for programming to complete and how
  long to delay before doing an automatic re-read of the registers.

  Tested on the i.MX8MM-EVK

  relax = 1 strobe_read 6 strobe_prog 670

V4:
- Change the RELAX fix to drop subtraction of -1 for all users - Leonard
- Expand register definition from the 60 documented OTP registers to the
  entire 256 registers putatively in the address space*
- Add Reviewed-by as indicated - Leonard
- Added Suggested-by where it made sense - Bryan

* Dumping the expanded address space shows that there are indeed OTP values
  present that can be read back from registers that are not formally
  documented for i.MX8MM eg.

Bank 20
        0x55000801
        0x00014d14
        0xd503201f
        0x55000801
Bank 21
        0x00014d20
        0xd503201f
        0x00000000
        0x00000000

V3:
- Fix commit log for the expanding the ADDR field i.MX6 uses seven not four
  bits, which is why the existing define says 0x7F not 0x0F - bod

V2:
- Rebased to linux-next/master to align with i.8MQ work
- Two patches dropped as a result of rebase
- Added patch to expand OCOTP_CTRL_ADDR to 8 bits for all users - Leonard
- Makes sure nregs = 60 not 64 for i.MX8MM
- Tested imx8mm-evk, imx7s-warp7

V1:
This set adds support for the i.MX8MM.

When adding support for this processor there are two interesting gotchas to
watch for.

#1 We current do not preserve the WAIT field for i.MX6 and since we are
   reusing the i.MX6 set_timing() values, this would also affect i.MX8.
   On the face of it, it appears to be an inocuous error with no real side
   effects.

#2 Secondly the i.MX8MM will calculate a zero value for the RELAX bit-field
   when programming up OTP fuses.
   This is fine for programming the fuses but, it introduces a strange
   failure state with reloading the shadow registers subsequent to blowing
   an OTP fuse.
   The second important patch here then is ensuring the RELAX field is
   non-zero to avoid the failure state.

Bryan O'Donoghue (5):
  nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to eight bits
  nvmem: imx-ocotp: Ensure WAIT bits are preserved when setting timing
  nvmem: imx-ocotp: Change TIMING calculation to u-boot algorithm
  nvmem: imx-ocotp: Add i.MX8MM support
  dt-bindings: imx-ocotp: Add i.MX8MM compatible

 .../devicetree/bindings/nvmem/imx-ocotp.txt   |  1 +
 drivers/nvmem/imx-ocotp.c                     | 48 ++++++++++++++++---
 2 files changed, 43 insertions(+), 6 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
