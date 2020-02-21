Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1866916885B
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 21:29:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F3F0864B3;
	Fri, 21 Feb 2020 20:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id azhFj22Iysx3; Fri, 21 Feb 2020 20:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B409183713;
	Fri, 21 Feb 2020 20:29:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA041BF83A
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 20:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A7EA88081
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 20:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uX1adzcd3n2Q for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 20:29:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 13E7088018
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 20:29:15 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j9so1833704pfa.8
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 12:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AhyF1vb5J/RNFh5gS2ZeVN61pIuMZEud+IXqME7A2aY=;
 b=jwlue2HYdUOtUGPGUVjbVXq5HJ2rdtSNWs+ZDK/Y+cW4vXSOIAez8Jx7Jf8LGCxEP2
 a7XGIyTM213EGwZu8d6sT1rcSj7wf4A0k9d/XRrKxeahVrfOrUqNfbZW0/1pVBN29TSh
 S/B1bn8I0UTpU3ah1q9HpW2nIOdDxx0YqsOeSZVwd00I00OYkcww7FSalaZbreyiQ+/k
 hGH5W5KbngHWQCNBZK+K4DU1GxkP6hz1IbTLUYiF6OD17EgSuQN7kx49w9eDBRK8EH1c
 jf+922Y7SD5MBYpGZ+TaNciPqTu2a0vlykggsd5n3KL4MLIrhqUVRstrQD0VKbwU5DYL
 k53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AhyF1vb5J/RNFh5gS2ZeVN61pIuMZEud+IXqME7A2aY=;
 b=Aez39STZHEqtjQD9m33vPzT9NiCoyq3v413VZHzrHUKZRGMy/KqmB444UV+PWbC0OO
 9T5MjEILmntqTOD9oLmoZt222Opxt51tHUOweRu0XP3+Ty491biLPr8WxbbMCvxAjSh5
 Iv5coXlWsrAyurL1JWPmpCdeCkO13fbAXwC3+luJ5cCDhfAIhOeBUr7W+6oi6b5cmjar
 Brvwxh6dse/YuPdXhC6fYBSTAO/oZwd/e3tTGJUV6CD7Z1FeCJBqCYBXSSmBJjwQPNMg
 51+QnyJvdVfyGsX0s09lSkKyOr6oia1SZjy2FVayoDyM/S1uZbspU/Y1w2i1ZGvDLi/z
 Tp6Q==
X-Gm-Message-State: APjAAAUl8EzWnGIf45KW01Fjx8vZ4uTTcexo/QLB87MiOPCYKDvjon87
 JSPEbvfkP3A1ZBketeyfloyQ/A==
X-Google-Smtp-Source: APXvYqxFWZN+hGzdjri4i8S+3BEyF1Y//evwgvtuMy4DH27kRD8V2nP2Qdg5E3PjrydgrvgYKNtFHw==
X-Received: by 2002:aa7:8597:: with SMTP id w23mr8980021pfn.38.1582316954634; 
 Fri, 21 Feb 2020 12:29:14 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id az9sm3393890pjb.3.2020.02.21.12.29.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 12:29:14 -0800 (PST)
Date: Sat, 22 Feb 2020 01:59:04 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: qlge: add braces on all arms of if-else
Message-ID: <20200221202904.GA19627@kaaira-HP-Pavilion-Notebook>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix all checkpatch.pl warnings of 'braces {} should be used on all arms
of this statement' in the file qlge_ethtool.c by adding the braces.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/qlge/qlge_ethtool.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 790997aff995..592ca7edfc44 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -259,8 +259,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -273,8 +274,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -290,8 +292,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -304,8 +307,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -316,8 +320,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 		netif_err(qdev, drv, qdev->ndev,
 			  "Error reading status register 0x%.04x.\n", i);
 		goto end;
-	} else
+	} else {
 		*iter = data;
+	}
 end:
 	ql_sem_unlock(qdev, qdev->xg_sem_mask);
 quit:
@@ -488,8 +493,9 @@ static int ql_start_loopback(struct ql_adapter *qdev)
 	if (netif_carrier_ok(qdev->ndev)) {
 		set_bit(QL_LB_LINK_UP, &qdev->flags);
 		netif_carrier_off(qdev->ndev);
-	} else
+	} else {
 		clear_bit(QL_LB_LINK_UP, &qdev->flags);
+	}
 	qdev->link_config |= CFG_LOOPBACK_PCS;
 	return ql_mb_set_port_cfg(qdev);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
