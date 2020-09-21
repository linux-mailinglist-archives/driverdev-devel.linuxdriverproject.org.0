Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF08F2719C8
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 06:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 583BA85F4E;
	Mon, 21 Sep 2020 04:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2T_rXwtAg9B7; Mon, 21 Sep 2020 04:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 321A385F0B;
	Mon, 21 Sep 2020 04:15:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 015BD1BF471
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 04:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F25DA85F0B
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 04:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9PhTNLB5QJO for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 04:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 803CC85EEF
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 04:15:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 7so7883478pgm.11
 for <devel@driverdev.osuosl.org>; Sun, 20 Sep 2020 21:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PMpd2iuQd7osjXvfgkBPJ2IsgF9Xf109kaUhH0GQtT8=;
 b=C44FnCdZfLj1icPeqExYE27n9tFJofco5mqWOXrUqnjmOeV6+2uUKyuZWIDd04H9cy
 icoIQueS9Fa80ikRnN7zutEf14HXA/455FDl5/LVduDXymJdn50lsHf0/TBwkz4Y0UsI
 V3NJn/mCK24AEDmWuOVWPZ4SoO370ll9Ej8aDjSfIRGW0y+mRkHE2BIDzXeXDRGDT4sd
 qq5PDKl0L8MCu6V8OQIeXVe//m9THfi8MTAjxIKBQtcgo1McCBwr0wqii4FvEY6emzcT
 aFhfoPkXHKtoSLAxT0tL9hyOfktGXI2gh15gkdRdC4g4Xbm8Zr00UmXHrcVqrVDSeRhy
 ozew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PMpd2iuQd7osjXvfgkBPJ2IsgF9Xf109kaUhH0GQtT8=;
 b=FOA4Pmc8PV5R/sAj44zam/YI5v81g5OE1Rk1tEqwEKm/sUJ9TTniuF+cRIplYIQtF7
 y/chrI55QiBappgFFzEUR4d8YSwNJKa+D00EgkXZUtOExpXs5W++PrSb+Rj+f7echTQ0
 j8THqID94MTKPrGQZcNC/SQC3Q1/lX8a8mVgUxBb3Si4YPcT6RHN8SRsi7VQduaMU5BQ
 RiX9HId2jTN6nM2mv1cNbx5SKFuNYeUjkZ2zlDMDtaQwFyFPJ2KEpWvCtjdESxsEDCUY
 UtDLDpg+neXQVZulTzg9BKv4tiRmnYlZ0Jjz+YyksFI3ddmhZDcf4w0GnJz1CGFscZ7I
 1YpA==
X-Gm-Message-State: AOAM533za/uzGd9T6Ai1CZrswW8Jqhzc4fyUKrCE6IUNh0QUCp2EvcF9
 dAQ1hV+SbxHNdUm8ORgjd3Q=
X-Google-Smtp-Source: ABdhPJx17/1CADJbOaVVfJ7q+xbeT9muFWV/0J39iH7BCffiPIMpuBGC+mKOq90lKXIeLKYzoPEXtg==
X-Received: by 2002:a63:c64c:: with SMTP id x12mr309522pgg.138.1600661724156; 
 Sun, 20 Sep 2020 21:15:24 -0700 (PDT)
Received: from james-Aspire-E5-575G.hsd1.wa.comcast.net
 (c-71-231-36-179.hsd1.wa.comcast.net. [71.231.36.179])
 by smtp.googlemail.com with ESMTPSA id s24sm8926823pjp.53.2020.09.20.21.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Sep 2020 21:15:23 -0700 (PDT)
From: James Browning <jamesbrowning137@gmail.com>
To: 
Subject: [PATCH 2/2] drivers:staging:comedi:comedi.h Fixed typo in comment
Date: Sun, 20 Sep 2020 21:14:49 -0700
Message-Id: <20200921041452.7293-1-jamesbrowning137@gmail.com>
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
Cc: devel@driverdev.osuosl.org, James Browning <jamesbrowning137@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed repeated word "in"

Signed-off-by: James Browning <jamesbrowning137@gmail.com>
---
 drivers/staging/comedi/comedi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 3bc74bea830d..b5d00a006dbb 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -970,7 +970,7 @@ enum i8254_mode {
  *   major reasons exist why this caused major confusion for users:
  *   1) The register values are _NOT_ in user documentation, but rather in
  *     arcane locations, such as a few register programming manuals that are
- *     increasingly hard to find and the NI MHDDK (comments in in example code).
+ *     increasingly hard to find and the NI MHDDK (comments in example code).
  *     There is no one place to find the various valid values of the registers.
  *   2) The register values are _NOT_ completely consistent.  There is no way to
  *     gain any sense of intuition of which values, or even enums one should use
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
