Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169B12305D2
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 10:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8600187E38;
	Tue, 28 Jul 2020 08:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rYWfkrE4rEI; Tue, 28 Jul 2020 08:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF55F87E3D;
	Tue, 28 Jul 2020 08:53:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84F511BF842
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 08:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 337AC2284F
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 08:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1wg5d3gLkin for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 08:53:02 +0000 (UTC)
X-Greylist: delayed 00:22:41 by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DB0822849
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 08:53:02 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id h12so125245pgf.7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 01:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Krf3mHPaRhONZrJUP4kLL+SpT/1O8y5l8m6Ya1wdpkE=;
 b=nhCjMNdGpcIOWYXchr2X67Jx0xqPObEdVXUjSjcpgdiYIruWbcrLrjOSjJzGqAIjd7
 vrlt8Jb75Qf+wTP9BNzXwrM0QEtfMyFaj3F8eAHdCZnvakhHkGu3s0VoUuJWRBv8oe9a
 lyzFkTycR02L1IJfPhmBwvu6/GhoRYxO07BNT8B1jJ8komhzqC80ueEL+jHk8n89+1CU
 qqil3Ip7r/q+8uL6iFxdTsrIk46pLcuaXVt5C/6ibrhdHcTItJI5CRZOtXL1apqR5xdz
 J7MSYQgRLxz8hrXMiABWD1IOkuc7T62hWlfuzqn0GiBerGiq4FJOBDuwZ5cGU5J5L38h
 C0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Krf3mHPaRhONZrJUP4kLL+SpT/1O8y5l8m6Ya1wdpkE=;
 b=MlrvHeW7rOXbJ0nezTV6xNa10Krs8Dahv+1+2q1B/NvXKj7E6CjztT+YwKThYQVANZ
 Tcbmd0V+VMBkjpLwbfiNx9VzQLfXhCKoQd4dTtGaF51ujlQ7vqfyHMVbj288ssuRNF53
 A1AidDY7Nq/YC24ju+AWfwYXaVXgxhT3RlZsitovMsXaOQJaqQXBi2J1xD02sArF2iCh
 jsh1XwSx4WY4fGFrj3Pzfe3JOOV7EvkKcTi4Lj0Oit66kzplDx8pihFfQ00L1aYBGgbK
 VZJlDwhR+cBS9unwEkN5AW6CBM1XDdFCmzlQu/a9hlrAEKYxm0DnDtCLE27EP803mAwR
 7vgQ==
X-Gm-Message-State: AOAM530fgWUWWL2TWH24ai2B8nbX+kMCoA7VM7Ig5MFkz8PmADz2CmUS
 GPbgLOL9fK5cgdVq98IN5DjG0Dsp1YPkMIJd
X-Google-Smtp-Source: ABdhPJwxUnxFK756k0a5/cKYYYuNHSDaVSvQ6w8JriFYCnKNk602Aut098WOzwQLFtdyZlJjBPowUQ==
X-Received: by 2002:a63:4e51:: with SMTP id o17mr24411320pgl.315.1595924625553; 
 Tue, 28 Jul 2020 01:23:45 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id o10sm2033014pjo.55.2020.07.28.01.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 01:23:44 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH v2] Staging : media : atomisp : fixed a brace coding sytle
 issue
Date: Tue, 28 Jul 2020 13:53:30 +0530
Message-Id: <20200728082330.24948-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728073715.GA351768@kroah.com>
References: <20200728073715.GA351768@kroah.com>
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
