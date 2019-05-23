Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC627BDA
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98EF0877A3;
	Thu, 23 May 2019 11:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o34LQuDlyo2B; Thu, 23 May 2019 11:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CB368763E;
	Thu, 23 May 2019 11:36:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99BBC1BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96B9330FCB
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stvRcvEy688L for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by silver.osuosl.org (Postfix) with ESMTPS id 20ADF30EDE
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:32 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id r76so5097407lja.12
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wcNmkTb8iT2ZbAtgyuxqn+Ua2QHtCHTWatTbEbDqU3Y=;
 b=2QC/vo+ZOVICORGm8VD8UaIT5W01p9qsjoUT09th54L9n317SVhhJEll6Qb3vpM/e7
 Hh31im5IGWYkXoXYaXKOBU49Q/f9awhgAw7Pf/KkzDi4dDrn1OGszPqpAKD1PKiL9SDC
 HXGa1KVqP7TqlTP/UZbtB6GZdiaWbo91Zd7jTHiq46jin8sCGawUFQaYoSB4raknyuLo
 mOvc1R6a8nVbips3U+a1IHHT2n/FDzO8iOwM3h5+JRGh85fVuKyaxnxENv4nHKNFdNuF
 8oSuoorqg7uo9WT7q1CxmHMjjPE7m4biH2uNuTWdGXtEHGBQVIZpNb8tlez1QzNycFls
 s0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wcNmkTb8iT2ZbAtgyuxqn+Ua2QHtCHTWatTbEbDqU3Y=;
 b=TyyTERXdXlKt5v61Ixg/lyXfq1Zo9e3k4ifjSO3dCuPM83tpZ+pdgCvKL8PPwcwd+6
 Zty92gFExjRC3EwTbY2PadFz6a7eO/zCrqqH/ineYDkxKlgh5lMjPyP1cl+8ElFvgsA3
 Irse6OVWxIQp7TxXSx+NfGfw44zMIbDVUActAjRiXaVRLZoTTo3UCPT8KVycz/wJA6Cz
 AIqPBT7J/bn0/CMUdL41kRKfM6W/Y2G40q2ssrGKCZ6JG1Ocuj5ApHPv2VUkE2r5jgW5
 Fuv+I6ISPInAnqsalwAcRZ4wmq4+9WtHFjHi1c3dLfavP1Zgjz+GhlecZFBaqolbJoq8
 yoZg==
X-Gm-Message-State: APjAAAUZoarTIQhoL6o6AoRa+KCqlRNtXhKiXVn1gw9Y/VXNpVxtuiZ8
 J6r9NKyus2Qj4Ge6uamQIB1YPA==
X-Google-Smtp-Source: APXvYqxshKCD55Yo2iCoEhLs8bv9/IcKvt6bLEvW6WAFDH5FXDM/3N487weHx8ZdF261hm0TIJzKUg==
X-Received: by 2002:a2e:99cd:: with SMTP id l13mr4937287ljj.110.1558611390288; 
 Thu, 23 May 2019 04:36:30 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:29 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/8] Fix more coding style issues in staging/kpc2000
Date: Thu, 23 May 2019 13:36:05 +0200
Message-Id: <20190523113613.28342-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpUaGVzZSBwYXRjaGVzIGZpeGVzIGEgZmV3IG1vcmUgbWlub3IgY29kaW5nIHN0eWxlIGlz
c3VlcyBmb3VuZCBpbgpzdGFnaW5nL2twYzIwMDAvY2VsbF9wcm9iZS5jLiBUaGVyZSBhcmUgb25s
eSB0d28gbW9yZSB0eXBlcyBvZgpjaGVja3BhdGNoLnBsIHdhcm5pbmdzIGxlZnQgaW4gdGhpcyBm
aWxlIHdpdGggdGhlc2UgcGF0Y2hlcyBhcHBsaWVkOgoibGluZSBvdmVyIDgwIGNoYXJhY3RlcnMi
IGFuZCAiTWFjcm8gYXJndW1lbnQgcmV1c2UiLgoKLSBTaW1vbgoKU2ltb24gU2FuZHN0csO2bSAo
OCk6CiAgc3RhZ2luZzoga3BjMjAwMDogYWRkIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25z
CiAgc3RhZ2luZzoga3BjMjAwMDogdXNlIF9fZnVuY19fIGluIGRlYnVnIG1lc3NhZ2VzCiAgc3Rh
Z2luZzoga3BjMjAwMDogYWRkIG1pc3NpbmcgYXN0ZXJpc2sgaW4gY29tbWVudAogIHN0YWdpbmc6
IGtwYzIwMDA6IGZpeCBhbGlnbm1lbnQgaXNzdWVzIGluIGNlbGxfcHJvYmUuYwogIHN0YWdpbmc6
IGtwYzIwMDA6IHJlbW92ZSBleHRyYSBibGFuayBsaW5lcyBpbiBjZWxsX3Byb2JlLmMKICBzdGFn
aW5nOiBrcGMyMDAwOiB1c2Uga3phbGxvYyhzaXplb2YodmFyKS4uLikgaW4gY2VsbF9wcm9iZS5j
CiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IGJyYWNlcyBpbiBjZWxsX3By
b2JlLmMKICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgdW5uZWNlc3NhcnkgaW5jbHVkZSBpbiBj
ZWxsX3Byb2JlLmMKCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YyB8IDgwICsrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9u
cygrKSwgNDEgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
