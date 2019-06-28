Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3BB5A563
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 21:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BFB9E22855;
	Fri, 28 Jun 2019 19:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kt+IVKjDdsSX; Fri, 28 Jun 2019 19:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1BAD20350;
	Fri, 28 Jun 2019 19:50:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7721BF393
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B94020024
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A8lrfpQB8-iZ for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 19:50:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 182292001C
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 19:50:08 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m14so5887727qka.10
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZRO3VzZkmVCxDN0Eltf5dWSrbxlKFxXjJd0EkGNJt8=;
 b=n/pLk2Blz54TcW6mfCs+FT0vklOVTcqyX4q8d20Z5/ABNjFoWsNfTzqHH9v8r6HAOd
 hi3GeNg2iC0l4UAzKGKW9zJpOprL+2Xl4ffvrV38Ga1vJAEjEUY2oEQcUJnIQJ/uEMFx
 0UjTXgBGOdiay5zb8VP1umXEMoArjkcwYJSRaKLea3uwry1q/1wF0poXZlzbNZnb1Qjq
 NPiYjRL4T+WybrjBX8IJRQZghCWPlXD8EvA5y3mZi6wEC5kt2OdrGqWi9FcYL+fgfZwq
 kKCzds0GscXsXABZu45uYi+N/pEHmU8Irve6DJWBcSkktZjY0uxXW1kJougZOvyo/UhX
 SDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZRO3VzZkmVCxDN0Eltf5dWSrbxlKFxXjJd0EkGNJt8=;
 b=rEcvfWNdLRfRQsooqH2wbKFS2LtlhO9Ctg4se9NEz2ajCba1xC2RnnL9egV/0E2F3O
 tvxGCnnFmVQPWFQienh8QAPsQ0/Farn9+ljfQMsisSQR0FfEYSqHznA6NIWMMI8CBYi+
 N44TiPwXDvOoUaij9WDHllNJ8WGYTMYpVptCV/2do1+ZD5U3ZH73hlAAhxCiEvwjhzA9
 5DV2fOWxXwQG4f+qn2WlJyYQybbqlkzm2cb5a+Msl1+RGsvOh7dR4XH7ObblSvA9bDty
 pA4zjzqNS8Z2Mt8r1jE4NmLDAP0xisbuFVpfFLxhlMsKBcHuLUfZYxRuyxY+SwNS072u
 ZfLA==
X-Gm-Message-State: APjAAAWK7qYPO5w1t9MO52YdYrnGYgc5WJnibwEKre1yiBRY5hs3irUi
 QJ/yB+uZayVVbQCAzI7oT2rSJw==
X-Google-Smtp-Source: APXvYqwoB+1hTX6NcQcoYm7J38heVzgt5n/r06M3b9POecQl9mwE7FfNXzKKP8Nnuns04rRl+HTCwQ==
X-Received: by 2002:a37:4e17:: with SMTP id c23mr10251959qkb.34.1561751407986; 
 Fri, 28 Jun 2019 12:50:07 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id c55sm1535141qtk.53.2019.06.28.12.50.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 12:50:07 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: lars@metafoo.de, Michael.Hennerich@analog.com, stefan.popa@analog.com,
 jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: iio: ad7192: create of_device_id array
Date: Fri, 28 Jun 2019 16:49:22 -0300
Message-Id: <20190628194922.13277-1-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com,
 =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q3JlYXRlIGxpc3Qgb2YgY29tcGF0aWJsZSBkZXZpY2UgaWRzIHRvIGJlIG1hdGNoZWQgd2l0aCB0
aG9zZSBzdGF0ZWQgaW4KdGhlIGRldmljZSB0cmVlLgoKU2lnbmVkLW9mZi1ieTogQsOhcmJhcmEg
RmVybmFuZGVzIDxiYXJiYXJhLmZlcm5hbmRlc0B1c3AuYnI+ClNpZ25lZC1vZmYtYnk6IFdpbHNv
biBTYWxlcyA8c3Bvb25tQHNwb29ubS5vcmc+CkNvLWRldmVsb3BlZCBieTogV2lsc29uIFNhbGVz
IDxzcG9vbm1Ac3Bvb25tLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIu
YyB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9paW8vYWRjL2FkNzE5Mi5jCmluZGV4IDNkNzRkYTlkMzdlNy4uNzAxMThkYjk4ZDk0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYwpAQCAtODEwLDExICs4MTAsMjMgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIGFkNzE5Ml9pZFtdID0gewogCXsiYWQ3MTk1IiwgSURf
QUQ3MTk1fSwKIAl7fQogfTsKKwogTU9EVUxFX0RFVklDRV9UQUJMRShzcGksIGFkNzE5Ml9pZCk7
CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFkNzE5Ml9vZl9tYXRjaFtdID0g
eworCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MCIgfSwKKwl7IC5jb21wYXRpYmxlID0gImFk
aSxhZDcxOTIiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJhZGksYWQ3MTkzIiB9LAorCXsgLmNvbXBh
dGlibGUgPSAiYWRpLGFkNzE5NSIgfSwKKwl7fQorfTsKKworTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgYWQ3MTkyX29mX21hdGNoKTsKKwogc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkNzE5Ml9k
cml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUJPSAiYWQ3MTkyIiwKKwkJLm9mX21hdGNo
X3RhYmxlID0gYWQ3MTkyX29mX21hdGNoLAogCX0sCiAJLnByb2JlCQk9IGFkNzE5Ml9wcm9iZSwK
IAkucmVtb3ZlCQk9IGFkNzE5Ml9yZW1vdmUsCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
