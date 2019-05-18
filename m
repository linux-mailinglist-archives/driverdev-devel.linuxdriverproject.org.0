Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF932257D
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1728860BE;
	Sat, 18 May 2019 22:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iN6v3NMDAFx7; Sat, 18 May 2019 22:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7806984C20;
	Sat, 18 May 2019 22:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B52701BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B22C485D3D
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UB5Hj_GgFpES for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:50:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A05F85D39
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:50:00 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id h1so12239862qtp.1
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i3ucxkelR/HQP9bUpvsE26VSnR/v3o3kZTaDa44EE1c=;
 b=NSLlyVD+sot79DZNAp+7bapx2pe7mQWtHWl2n7rYW0aNAulOevYUObNVSK/WIj69Wm
 zvmy7eIdht+lswEINUDsOO8tgn1xSCWaRIcrBpyHxEcAikmye973KYkoO8zj/c7RRNLA
 kenAJ44zOX7+0ut94DG+/TfbhhC6hijbZxkh0PfwIkRtJ4mWwlD3W1D7HbDCl02592DO
 PW/lPwKpFHfhzQFcgRqcxdi/bqBq97suuh2xWsjn0RBOxnqfXhBrpSEoiaFKCbQ8VMNv
 frXCkj4ROZSBPRPgx+FMl4alrxTcI/iq8WP5jFrM36PZZz2VWkS85c1iBb6HLC28aV5l
 XcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i3ucxkelR/HQP9bUpvsE26VSnR/v3o3kZTaDa44EE1c=;
 b=B8jB/N0fMCIY9efyYxUO7PH9WPpWS/8AQmfvQpbjdIirJ5wWtrJPGR74S+q11v7yWn
 zYJtc2OQAr/zJGc4pjVoK5EoY1fF/bOeUGaLEvezZGup8qPbvB1kshfrDdSIGu0CQbNC
 cRie+vuDd7yEk0L05QLWLI3A2KypfkV2r6voOWF2GF+6G9tJz632jmS++ZyhOfUjrRF3
 HPFrgLa81OxgbvXcot4gYU0kxv8iDGFD4Lcdd771IOxCHy00DBWzOngzvJc4xY5Spuj9
 cPX/JxnfOyWA5b8BRDMmokfWVEkTkDLbqHZrmSzXByIJym7cGljxI09g9eXOGGdpcrSb
 5OFg==
X-Gm-Message-State: APjAAAV2NZdaSV0MifNmcOdcKy6B6LJF4BSXKvZMUUu9f84qUQijkeFG
 NeZtbhKjZeoq+UNa+MN1ZhQc8Q==
X-Google-Smtp-Source: APXvYqyD+ao6l0Q3bobEplwWIc3zM/JALZvdkkwNOg8qh0e27mVn+AOrOUl2njaNZVt4DsBDeCcYnw==
X-Received: by 2002:a0c:986e:: with SMTP id e43mr41615006qvd.78.1558219484113; 
 Sat, 18 May 2019 15:44:44 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id g15sm7225889qta.31.2019.05.18.15.44.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:44:43 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH] staging: iio: ad7192: create of_device_id array
Date: Sat, 18 May 2019 19:44:35 -0300
Message-Id: <20190518224435.18266-1-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.22.0.rc0.1.g337bb99195.dirty
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 Wilson Sales <spoonm@spoonm.org>, linux-kernel@vger.kernel.org,
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
Z2luZy9paW8vYWRjL2FkNzE5Mi5jCmluZGV4IDNkNzRkYTlkMzdlNy4uY2M4ODZmOTQ0ZGJmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYwpAQCAtODEwLDExICs4MTAsMjMgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIGFkNzE5Ml9pZFtdID0gewogCXsiYWQ3MTk1IiwgSURf
QUQ3MTk1fSwKIAl7fQogfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYWQ3
MTkyX29mX3NwaV9tYXRjaFtdID0geworCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MCIgfSwK
Kwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcxOTIiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJhZGks
YWQ3MTkzIiB9LAorCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5NSIgfSwKKwl7fQorfTsKKwor
TU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYWQ3MTkyX29mX3NwaV9tYXRjaCk7CisKIE1PRFVMRV9E
RVZJQ0VfVEFCTEUoc3BpLCBhZDcxOTJfaWQpOwogCiBzdGF0aWMgc3RydWN0IHNwaV9kcml2ZXIg
YWQ3MTkyX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFtZQk9ICJhZDcxOTIiLAorCQku
b2ZfbWF0Y2hfdGFibGUgPSBhZDcxOTJfb2Zfc3BpX21hdGNoLAogCX0sCiAJLnByb2JlCQk9IGFk
NzE5Ml9wcm9iZSwKIAkucmVtb3ZlCQk9IGFkNzE5Ml9yZW1vdmUsCi0tIAoyLjIyLjAucmMwLjEu
ZzMzN2JiOTkxOTUuZGlydHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
