Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1717D231A6D
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B47122D0D;
	Wed, 29 Jul 2020 07:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2RUG+bMWX9Y; Wed, 29 Jul 2020 07:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1818E22B20;
	Wed, 29 Jul 2020 07:39:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6821BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00A238805C
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQL9HRmGt416 for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:39:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B77F88058
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:39:14 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id s26so12502574pfm.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zMRvTgAMRZWNdLWhRQAFPO8+G0B9J9srTu2Fp7kXf3M=;
 b=MhQLprU+zfumI0Msb8Sixe8JB0MV/W4eiDpEHKivnFRbY8aL9QeXqyRmnViWb7gOp5
 nkoIGdOUWLWHQKitYjmabDUeW04u+WgogyNIuSCi9jH/FmVFpM6KcfmaUNUfEXshZbhv
 ilraWxNFBfNIa0z732o6XMA/TIYB/UR0wAz1ildcGyYKrw+Fru+qIZsROWbs3VMX3o0t
 B1yJPZR9xzo0YAW18KINNWlB7xLihcIw+1UG9Fd3ejO1wYMlcXIyZ1FKpZcEtGmy0bj2
 yJqq11CpEebpfFOmExwZrNXO7EY7HNbx7Y1tveWOWlGjR4v7x1QlIqUgGYu6N1jZC9Hv
 r12g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zMRvTgAMRZWNdLWhRQAFPO8+G0B9J9srTu2Fp7kXf3M=;
 b=S/9dLR68IEd+wnVE1j0Wn+e3Q0hFNzXLAZ83cXiwnggKTWhbEUrtkgYlsQm3BeKhf+
 WrWozvkdcozkgpQwLs2PW79J7cBp6p55fj/H3Rf98mWLblq0JIlxfIKY+o4SoFCAQtd9
 hh1vO2E5SsFsjdI0K/eBQCsn3MWJ/OXwvImrLeE6DnmaW7ZshLkCGZ2zWKniK+L+MzYD
 gwnvqNl6JZ6HtSRbidnYdVGo2z2nh45/pvi4crs8ynHour2Xzz4xTMMvGt6cW5+3sjEv
 iCnMYnJeI6SXTzwNgASg87rdhpIwQJ1sTfReU9zc3QIRjXLA3T/PpLlOrSu4banMOSgO
 vrHw==
X-Gm-Message-State: AOAM530ui96ZYzoAVGqTTxizjVzraKjam47f3omXAb9ba07+qLH2Z9V4
 dq3xYw97ZaFiHPVovCYNUV04eQ==
X-Google-Smtp-Source: ABdhPJz2y+b3KMCeMF9l2PfAURxiLwo90lBqvKvvMpApyd7bhUoIzx4c9gUaLiu08ofQdhu9c2ootg==
X-Received: by 2002:a63:5d1:: with SMTP id 200mr28603061pgf.59.1596008354163; 
 Wed, 29 Jul 2020 00:39:14 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id f24sm1214206pjq.48.2020.07.29.00.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 00:39:13 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH v3] Staging : media : atomisp : fixed a brace coding sytle
 issue
Date: Wed, 29 Jul 2020 13:09:02 +0530
Message-Id: <20200729073902.1704-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
References: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 b18007@students.iitmandi.ac.in, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed braces for a 'if' condition as it contain only single line & 
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>

---
Changes in v2:
	-Added more description about the patch.
	-Added space before the symobol '<' in 'From'
	 and 'Signed-off-by' line.
Changes in v3:
	-Removed space before ':' in subject line.

 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 8ea65bef35d2..28b96b66f4f3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4981,9 +4981,8 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
 	case ATOMISP_CAMERA_PORT_SECONDARY:
 		return MIPI_PORT1_ID;
 	case ATOMISP_CAMERA_PORT_TERTIARY:
-		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID) {
+		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID)
 			return MIPI_PORT1_ID + 1;
-		}
 	/* fall through */
 	default:
 		dev_err(isp->dev, "unsupported port: %d\n", port);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
