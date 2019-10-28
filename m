Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D840E7536
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:33:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C8A07204BE;
	Mon, 28 Oct 2019 15:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8o4r-rjPuHKm; Mon, 28 Oct 2019 15:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACB12204A8;
	Mon, 28 Oct 2019 15:33:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06D831BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 035C584EE4
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1k0swBiaOyz for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:32:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE37684E55
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:32:56 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id z17so8513881qts.9
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=K01MlbOPcqeaYhVIj4KrVUdXGySrNF3wqsQr/ouX7b0=;
 b=hroZuIQ/kLaov7AW148eGUTn1/nFPiDYcaajtH6eTf1Dur5xFiVRVAyOp482vUKlaJ
 MlwHEzEld8o/ujXiofVc/OEbYdtws5Fx1tLiZES4K5Zj69UWZJSnGfoMwcACWIR4pNyQ
 obNKNEsLq0yEbVJgLhzKOFjj5g28hgnsOzq/mjnylp7AnjSNPH1VGEsVS22RMvivefjx
 PGaY6yQVci35INvQZyiSscZOIHoRjbSqKgyAafe0CIiAbhtROeK/8+Q6ftAeA66xKUjr
 RMHR+jS5pLZt4Jih+eKmW15PQUemS/YrYZf7YeerxsYAIia5GkQtPlioWXKE7NERcoX7
 ZJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=K01MlbOPcqeaYhVIj4KrVUdXGySrNF3wqsQr/ouX7b0=;
 b=NG/w+ELvKqmldja4+BIVyPZn1Ax6eFM1JGS61XqsWTBlq7sTn2CiHHKF7nJcuAwO7v
 tjeHRHelK76vCcAbP0n9itzqH05yrw3vs0siQbj3ovtIZZAU+1PKfqD5MnwHviTsPgle
 g5W1ZXKeLBqBqzN6KAxbZvkY7PKrXLt8/3vQOQOgTxiINg85T4Lwaw4VdlzzR+KG343o
 Il4qVbOWpbQZPj+N1+hrIizhclY52JiVTt0BLa8n8nwzxtJ8BaL+cDORr8UoY/SBanaQ
 lciPJvrp0WgBCL7qAbe9sA8bTJ4fecGSEFoOGtT/nfZYpo0H4uHplJSYXKynQ9L0pJlV
 QKdw==
X-Gm-Message-State: APjAAAWl+fCy10ywsLdw4BgwiTuKgRvmIbQhn8gF1zrIhkLgmszekP95
 qomxpZYzuNwTeX7ycYJWg8c=
X-Google-Smtp-Source: APXvYqwtQnktlqPe5NSdXIY5QLs4zjauQbcdIt5qTHHiAlUgNUyzE7YfECvUiHlkldNe6ywG2LLxpw==
X-Received: by 2002:ac8:6d0b:: with SMTP id o11mr17554607qtt.253.1572276775728; 
 Mon, 28 Oct 2019 08:32:55 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id w69sm2021498qkb.26.2019.10.28.08.32.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 08:32:55 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:32:50 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/2] Cleanup in rtl8712
Message-ID: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup in rtl8712

Changes in v2:
 - Arranging conflict between author name and signed-off-by.
 - Remove unnecessary parentheses.
 - Change the driver name to rtl8712.

Changes in v3:
 - Change alignment of eth_type.
 - Change alignment of SN_EQUAL.
 - Remove commit of unneeded parentheses.

Changes in v4:
 - Fixing misplaced parentheses of previous version.


Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 38 ++++++++++++++++------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
