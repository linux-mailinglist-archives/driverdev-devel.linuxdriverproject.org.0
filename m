Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C0723060E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 11:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C32D87D56;
	Tue, 28 Jul 2020 09:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IyHPzmxI-j1S; Tue, 28 Jul 2020 09:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4672687D48;
	Tue, 28 Jul 2020 09:02:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74E1F1BF86D
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 09:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C8AF22855
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 09:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n93Mo1AyOAKU for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 09:02:51 +0000 (UTC)
X-Greylist: delayed 00:39:05 by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1620422849
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 09:02:51 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k18so3339664pfp.7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 02:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=59sn0tR0bp5U2+QkacPtoAEGR9oCMwRmABhD/l+q8Ro=;
 b=fW73WAPrC11Tn8CNHEmWOe0NHXFV5wudVLVXWHVHhSzD3cJbnMAXkFjzyOXdts2jLb
 AcKUducjuZxw6uQLXFf2nvtY5loqE8Ml8LZZpam6rzePnm8JJccbanUWs5vORBacu9fa
 hzDGdQ62f2pwSxdpc/N0+0doyvQkzVUe7rwGszZ23LP//r7D+EynZOYLewLXSxNq+LA8
 vXqmkTx+V3eQlRee7Z5VTw2NAg+wXzds2iImFyw2cyOVsRanYklt+ve4IlXlP6/9EmiH
 ikHCs86Bwcw1rGO6bJ6FHERaTYuxDxOVOfsMdVbeWd8++pJF9rZFA+hnuv3yNyxWnzFJ
 nDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=59sn0tR0bp5U2+QkacPtoAEGR9oCMwRmABhD/l+q8Ro=;
 b=B3CF9ArHNiovZTI1MMWgPh5Lv7BUAfr8QYqKVxx2Lgo9fjBWJuFZB8Zt0YVvcwmkKT
 zZr8fl9Q4i1b1fN6jZQZaiMsw6ZxiFuhBxhQDsc/T+uXHTccmVjZR7NFU+78kT8FiD6S
 OcGRgxt/9x5/AHnf7MBWDG+jhXtVQTilr8zfhXaaXuUU3z/+M2Hzn7KF7ZaZ3hp7pRvY
 aAc4T8owTIc1iN2dFJ/pM569WwIWctMGgbtgb/G82jTaej5hrn3pf33OeDXMy8lZH02j
 QxMoJKXhncTtyLy/oakBktLei5OcSK+5s5hDCedR982v1UgmaSoC99S8IwO+IEW/wAhf
 TbEw==
X-Gm-Message-State: AOAM532XcWqC595t8PK61bwKwUrT3t+kHMVkDyL2MX3elb0R10wu13JZ
 GOiRKtjtXwiBMc/sr539Cgkpmg==
X-Google-Smtp-Source: ABdhPJzCpi4NS0EBVejZo/d91v2CZZOKRi5X1CDwV/Ex0WfnLblyStcErbkHCfEUlaxNh8jq0rEbKQ==
X-Received: by 2002:a63:6c1:: with SMTP id 184mr24299771pgg.262.1595926970553; 
 Tue, 28 Jul 2020 02:02:50 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([47.31.2.226])
 by smtp.gmail.com with ESMTPSA id x20sm1120549pjp.3.2020.07.28.02.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 02:02:49 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH v2] Staging : media : atomisp : fixed a brace coding sytle
 issue
Date: Tue, 28 Jul 2020 14:32:21 +0530
Message-Id: <20200728090221.25284-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728084341.GA1795795@kroah.com>
References: <20200728084341.GA1795795@kroah.com>
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

From: Ankit Baluni <b18007@students.iitmandi.ac.in>

Removed braces for a 'if' condition as it contain only single line & 
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>

---
 Added extra description and added space before '<' in above lines.

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
