Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBDB1C1A14
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 May 2020 17:52:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A0F388500;
	Fri,  1 May 2020 15:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfsmWS-O6IrS; Fri,  1 May 2020 15:52:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4241884F0;
	Fri,  1 May 2020 15:52:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 273D91BF5DE
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 15:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 22108884DB
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 15:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOzU9qUnc5J9 for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 15:51:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93764884D9
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588348311;
 bh=Wz8oCljjf+pGcIWMlf9OE38JXdnBDknY5RaRZdi4y3M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=aAgYhZE/u8eCnWJu13ATjbpppodgnZ+/Z3F4Q0sh0SKym7hVKig8aErdWKx2mGJ7r
 y9KiuDU+vv6yeULkseT/EG1os/wcfIOoeqatAlCWW0bbTtiaCCPRHNkgH61cLe33Xt
 joskGnjnbNM0V0FS8VNvnozVfZ2sfeB/BxLZDuw4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MKbkM-1jimWA30l2-00Kz05; Fri, 01 May 2020 17:51:50 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Ben Chan <benchan@chromium.org>, Richard Yeh <rcy@google.com>
Subject: [PATCH] staging: gasket: Check the return value of
 gasket_get_bar_index()
Date: Fri,  1 May 2020 17:51:18 +0200
Message-Id: <20200501155118.13380-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:PsVbLqj2wDQXQ4FP2WgMRm537F1O/5A8A6KmP7hLmsmwUIi4XSL
 BRVl9Zl9T/K4QhTVHcSHdte4gUOszm2Iw6wxWU8DNJet3QDFDE7hH/kP7icksifqTWUbzUD
 uwkY47MjR3JyZKbm+yi8UGlLUA+vi+gOloDKzYeaVyLBNecrGMouFK5w48+yEFSA+vFKOQ5
 iyfNxmGpZemueyxJ0PQaQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HtdhmCohi4s=:c+sgk2e0yTPS4N8MCQ4s/o
 CjXhDYuRTkDhQZJ0ucJKHdcsN4Drm8A+4ebGEQaroZ26W6gR3T0JCERmrPSwr2mT6oTKx+HYt
 5yvAHqEXAFyAg6lROIQ+a3T5vbhR6vTksdGp+fu+Ruqbh9QUbWA2tRPi93pEscv9YJhPZdKif
 dThgXqUl2hwu9MtiM9ycgFL3Cb+ziaQJox/qLh20QLpvlWZ2LjkVATFh9N2w9WavqpZlmWaZe
 4coogMWQiTFpoCkKr7iS+KM7jdEv5SrS6u3CgB/vZklNWwIHIGKIVInYBxEskkWWaVN9oRVl1
 lBhZwRf7TKKw4ZCWmNxj+hRjW4IAFxnPsbjBwwXOx90I8PZKe9oduuonqJYVoqRp2p1gPg7/J
 YK0QF/8Y5QqewoFNOFfUETwbbeqF+JxzKUmlg4xkpHxDUbiWmdwZt1mhfNRK4yuBTe/mPvJJz
 9Vs+A6rgpBjahR/DqEy07qz8+6mN/uiSVw/NhlFhoS03ETQB577MgiFHnHYYq5OWWvhCHOVA+
 U8/y8ZInRZ+RouyA0+9g1zXuIkXBP6Xikj1pIMy5TbnJGFU+v5+R5Gi/QUQZMhb51Gxy63Il2
 dhVewivWbVrtPcZxCE3T+Pxsjgs4kqrgpoyCLnEKp9DnGL3d9qKnfZgXwO6L/NMQiqkgnd6GE
 uTZa2y7qsHr0Pu0zVPEUFn/lilp18zTQQvYzsdMJsMEj/dVoY3BFFXwO+3KGor+uQlBCOxZpX
 cT9loL9HmW8VHTWLZ+jcRStYxFvsNiBfcX5wTMvC6rUTQMB1lKMua9ud9xxJ2Z9dhUNxqu9dM
 D1wL96n/R00OAVKwIUz3gQXcv14L8CBcftYQX/7cvndjZ3gqXOqQ8Gixqh98JR416BNBf4ih3
 bQ5PvywclY3fLxv+AuCj9v+39mCk9fz4CS6T/rw3q17feNqUHUq49phIlzl3Iz9Tcc8266TIT
 T/KQq0Ikn5JfRaRreJaQW5oeXldiTyPUs5HqO/YLfvmFW/zbR7frqJ3X4jkKLhbyEToEG53gF
 rb7kQBtypv08oo87j9UNuGrUG6jXMS7zoVMml1cl2BMBkn0LyAFjcLb3ktLNAIWTQpjfydN+4
 FLTImjYPXsfay52GiHXTfbBt7GvnJByG9xKGY/HuKeifl9fgw4FWmwVzJyrUkqVrdVBXwJMaA
 b56YpU1avPWSyusYLzWmxy26fgiiFIiCQkxWG9Vmhu/TRwsgPicsExBJPi/gs/05qKwloZNBo
 qcRye2FBqYWemqsRr
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Joseph <jnjoseph@google.com>, linux-kernel@vger.kernel.org,
 Simon Que <sque@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Check the return value of gasket_get_bar_index function as it can return
a negative one (-EINVAL). If this happens, a negative index is used in
the "gasket_dev->bar_data" array.

Addresses-Coverity-ID: 1438542 ("Negative array index read")
Fixes: 9a69f5087ccc2 ("drivers/staging: Gasket driver framework + Apex driver")
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/gasket/gasket_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 8e0575fcb4c8..67325fbaf760 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -925,6 +925,10 @@ do_map_region(const struct gasket_dev *gasket_dev, struct vm_area_struct *vma,
 		gasket_get_bar_index(gasket_dev,
 				     (vma->vm_pgoff << PAGE_SHIFT) +
 				     driver_desc->legacy_mmap_address_offset);
+
+	if (bar_index < 0)
+		return DO_MAP_REGION_INVALID;
+
 	phys_base = gasket_dev->bar_data[bar_index].phys_base + phys_offset;
 	while (mapped_bytes < map_length) {
 		/*
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
