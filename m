Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C84C4141E62
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 15:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 812DA20415;
	Sun, 19 Jan 2020 14:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ur7jv5tZ+tj2; Sun, 19 Jan 2020 14:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9518203F6;
	Sun, 19 Jan 2020 14:04:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 676291BF5A4
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 14:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6432F850E6
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 14:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjaVuhOYKB72 for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 14:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C4E48508A
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 14:04:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y17so26894612wrh.5
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 06:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Ocb2zugiLO+xET//21zhNLSukAYLvW1HhjzJze0PZFY=;
 b=XojgUu3qJDckuKraJoIHxKxWu+Q3CYMRjOdwV+B7NCNwAlwnrGuCMJDkTJlJxQpWpy
 tKi/1apRW/xl2lAsgjQO5i7y4OdT12sYiVT06ASHAy6YraMMmRm2qoY+KyZW+QDVNnwM
 EDmX4RtkVrdEm0OgAhUNenu8n8ALvSZHd4HHtOHHNfOz6+pjNei9E9UqVcbCSzHYinhW
 Qn/eBBNYpCc1GI1E5MdSWZMAGpeQKscYotaaJqKDV/+ybgvv7erslI5KHEB/dBgbLvcM
 mY4YU3v47Z5TxcBn29Gq++bPB27+Ce34Ov692BRIKk0cwRwT5RrLeZqcUDz0nQ4W3Q5T
 vLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Ocb2zugiLO+xET//21zhNLSukAYLvW1HhjzJze0PZFY=;
 b=OhCajiDRYfPjP64matFyhs3AuGUJ3p2qIS/SyOzYPS3Nnuf+3LSQR/Bxf4ET24c8Li
 TCBTKOJkEcirt0UGALwL/X2CmO7FKTt3bbiaZHqLmqCbyFQa/4kuhm0dCKd1L8cjwUAW
 aCNs93iKAruMI2BLp96RhhDjCLkJGS45FK8D0W/jBCSR7FtXV43GsDK1wsV62eooJNSy
 u66+iohpqJBVJ4fLbiJ32T4lYO7MJuyIu+L71q3SrI69y3TS1PRnpJqmCib6AEl3HAzx
 iqAZ1up7aE+54hv+FbGDw3aP5Vr04QcSC4jPPw+f1ORuv8IYFt23DJL6yoXWxgDUvi2X
 IcHQ==
X-Gm-Message-State: APjAAAVmkn/TOV/Mh14hAXMjMJRalXJAIJccEyU0OX1v2Qzr2FLyb28a
 ulsiFSbsaLvxnQGriAjwtYI=
X-Google-Smtp-Source: APXvYqyyqUUrY5OFgXLSFWeA7vOuLAz1xsvXt998I/Af2oxYL/hTVOxA+CtxjWqOqaeZnx7Fb+7zsg==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr13127453wrq.176.1579442642464; 
 Sun, 19 Jan 2020 06:04:02 -0800 (PST)
Received: from home ([141.226.244.232])
 by smtp.gmail.com with ESMTPSA id b67sm3649809wmc.38.2020.01.19.06.04.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 Jan 2020 06:04:01 -0800 (PST)
Date: Sun, 19 Jan 2020 16:03:59 +0200
From: Valery Ivanov <ivalery111@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH] staging: qlge: fix missing a blank line after declaration
Message-ID: <20200119140359.GA8668@home>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "WARNING: Missing a blank lin after declarations"
Issue found by checkpatch.pl

Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 56d116d79e56..2872b7120e36 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -412,6 +412,7 @@ static void ql_get_drvinfo(struct net_device *ndev,
 			   struct ethtool_drvinfo *drvinfo)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	strlcpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
 	strlcpy(drvinfo->version, qlge_driver_version,
 		sizeof(drvinfo->version));
@@ -703,12 +704,14 @@ static int ql_set_pauseparam(struct net_device *netdev,
 static u32 ql_get_msglevel(struct net_device *ndev)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	return qdev->msg_enable;
 }
 
 static void ql_set_msglevel(struct net_device *ndev, u32 value)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	qdev->msg_enable = value;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
