Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9432D8E93
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21BDD873CA;
	Sun, 13 Dec 2020 16:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTXdbi00vsvy; Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C2A4871C5;
	Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 499D21BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46ADC85C54
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8p2QU7QfYsk for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 797ED85BD0
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:25 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id d3so11609553wmb.4
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dmjKdO+JEpT1IqCZS5DtE4FSFs2mvQW8g5a7Dp6tEjk=;
 b=IxPbfQKxUyhWWjWPfr179EFDY0r+LSab9s12y35Z85P9SQiZmygiHbZ9c7D13MiBNF
 0rOMzuPZbg8RLwb03mF2fNFChQzWS21iCB/cXvGpSOc7YkO0aef8cUWBhhNfsJL7wM9x
 PwZwm6HmYPvo9mfj7S7W4tdDd/JpT61IpfxvKFF7OL9Bd7B4rlnPSYHh/p8lsw8w91hL
 wBmRgm3rJAZgZCj2FC1SPSFBH2Owr474D3biHgFr/0JMlXbZyAm8EXys21T7FNusjs94
 WwDPV1ZQOqn5gYz3rmZhnx6701eoVuxrds8/067XaNm1r+ZXW9qbhAPw01V/6/2JPt5M
 KtfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dmjKdO+JEpT1IqCZS5DtE4FSFs2mvQW8g5a7Dp6tEjk=;
 b=FWz1BQoYYe2VTw35k5ZIVnsinoHkX0aXMcBTne81jfC3N3Qb4CMnXIwO0iZX0+nGza
 IFEURflLFq5CQz5F4Or5uqzGWQY8Brp7GQ4iFPYm9nmOudoRGPyIvROtcWdUTF9AVNqr
 y0X1XXqTN4wwDo7Qv3x8TOLuFfSeqDc4u10HtCc9QC7jFIvXPG1qzVxLrv1M5wvaPUSY
 tnG29YXH7CPMDgz/mvJcXeLIkh7EnCjwtRuAZ1W2aSjcZGnOppdgpfpEFF1TIDjwQTjv
 LZvUGmFqEoh4RFZqdfln5tensxzfD3TUQSw8UOW7vBD3XO6nbrZjOwfxMTPmYSndJMgg
 HMxQ==
X-Gm-Message-State: AOAM533Cpcb2B9m+jod4PNkdsHZqD04RzQjK2bSmbzMVTtmlHs+pE1ef
 31ahKJT+JAVtu9VfMur0d/g=
X-Google-Smtp-Source: ABdhPJz5o+Q66aJWk460uLI3HwRYoGxECEUuhnH+7NlpQFQfP/nUe8tczjt9EpUFQTxM9EuxYAKlYQ==
X-Received: by 2002:a1c:5406:: with SMTP id i6mr23593347wmb.137.1607876244038; 
 Sun, 13 Dec 2020 08:17:24 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:23 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
Date: Sun, 13 Dec 2020 17:17:13 +0100
Message-Id: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After this driver was moved from staging into pinctrl subsytems
some reviews for bindigns and driver itself comes from Ron Herring
and Dan Carpenter. Get rid of all the comments to properly be in
a good shape before merge window.

Best regards,
    Sergio Paracuellos

Sergio Paracuellos (8):
  dt-bindings: pinctrl: rt2880: properly redo bindings
  pinctrl: ralink: rt2880: avoid double pointer to simplify code
  pinctrl: ralink: rt2880: return proper error code
  pinctrl: ralink: rt2880: add missing NULL check
  pinctrl: ralink: rt2880: delete not needed error message
  pinctrl: ralink: rt2880: preserve error codes
  pinctrl: ralink: rt2880: use 'PTR_ERR_OR_ZERO'
  staging: mt7621-dts: properly name pinctrl related nodes

 .../pinctrl/ralink,rt2880-pinmux.yaml         | 62 +++++++++----------
 drivers/pinctrl/ralink/pinctrl-rt2880.c       | 45 +++++++-------
 drivers/staging/mt7621-dts/mt7621.dtsi        | 46 +++++++-------
 3 files changed, 73 insertions(+), 80 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
