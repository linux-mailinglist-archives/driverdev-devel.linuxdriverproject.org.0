Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9215C27159
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 23:06:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C02B87F44;
	Wed, 22 May 2019 21:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ymPJqgFd70E; Wed, 22 May 2019 21:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7ECE87EB2;
	Wed, 22 May 2019 21:06:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 904E41BF280
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8CDFC863E3
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrhXrtW70guu for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 21:06:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2468E8643D
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 21:06:48 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id z1so3437801ljb.3
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 14:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Y9uvZwgB7bQqY2Q7B/JNHVKnOBJyiIUgun6Ue42g94=;
 b=lxfVS65gxJ31U3HidVwFh2ESyMciljPGQ9L3gzpuGCHBVhzezCVbAw66+Di4Ft31K4
 kQ39fmuWRKnTGBma6uY4/yr0VlPThYj7JYIYecnWxRIDNaGu5bb9xshfoQU1kJ6RzMeS
 SL4bmnzULado+sLuZkiCU+MBgSNqHDQYoKpoeBOTM9jZPfKxkR0h2iPOkJOQZzQSE7fl
 eOQxkLVYUt/kNos5MGA1ZCV0i2G9NqtxElTHyFm5HvxDmz85IDD1jTeHrDFoqzJDRKcV
 tdyRZdNcBS5VN0kZNnwAbV59Jkz+GNB3ohBbukRGe7+E6+l9kfZxq3XPJ+tESYugX50+
 16fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Y9uvZwgB7bQqY2Q7B/JNHVKnOBJyiIUgun6Ue42g94=;
 b=YqC3O40j7FkVEM4wHFG+BorsZpVyuT8+RWpSepgmL2S8nGHKN0Fh/IASv0zkd4FHVt
 3ZylxnHwjxtZI/6dOdC38dIVrYqhQ3+LtL/pcVsikeXjZBKlbKs/6uUtLPEpQBRjMrM8
 I8bsT0mvbi2I+0QC46MW8FDRG1z0FdJWb8KrhJUh2PcfTESIdcJ5oYdoslqR3DByG+Uy
 EqkSjyevS53OwS8wiW/gjtgT4tFAEz5tEcW+cUDzN+u4vm4WAToZzWtb76GjSEiqw6N1
 9u6EhG5XL0GxZuvprklfI3/iexLRrkR0BXy+ZguhmSEHu9ac52FUmN2NqhlVWiEm13S/
 XLwQ==
X-Gm-Message-State: APjAAAVKNasuSZUCnA8WAhlulrZQTdFhwyZH61kkBFPI/OdWySQqMWoF
 7wOAeRcbXc8C3sN/luHfGzXUCA==
X-Google-Smtp-Source: APXvYqyGdS5NdVP1srxefaIKMMjWpNMjTYbtaDIKo9dqvGb7IPuC5SYawc7KqgHZJsYqKC8TN8aF9A==
X-Received: by 2002:a2e:7001:: with SMTP id l1mr19877192ljc.11.1558558754233; 
 Wed, 22 May 2019 13:59:14 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e12sm5506518lfb.70.2019.05.22.13.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:59:13 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: kpc2000: add space after comma in cell_probe.c
Date: Wed, 22 May 2019 22:58:48 +0200
Message-Id: <20190522205849.17444-6-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522205849.17444-1-simon@nikanor.nu>
References: <20190522205849.17444-1-simon@nikanor.nu>
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
 dan.carpenter@oracle.com,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAic3BhY2UgcmVxdWlyZWQgYWZ0ZXIgdGhhdCAnLCci
LgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0t
CiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jIGIvZHJpdmVycy9z
dGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKaW5kZXggOWEzMjY2MGE1NmUyLi43
ZDQ5ODY1MDIwMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAv
Y2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9w
cm9iZS5jCkBAIC0zMjMsNyArMzIzLDcgQEAgc3RhdGljIGludCBwcm9iZV9jb3JlX3Vpbyh1bnNp
Z25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCwKIAlrdWRldi0+
dWlvaW5mby5tZW1bMF0uc2l6ZSA9IChjdGUubGVuZ3RoICsgUEFHRV9TSVpFIC0gMSkgJiB+KFBB
R0VfU0laRSAtIDEpOyAvLyBSb3VuZCB1cCB0byBuZWFyZXN0IFBBR0VfU0laRSBib3VuZGFyeQog
CWt1ZGV2LT51aW9pbmZvLm1lbVswXS5tZW10eXBlID0gVUlPX01FTV9QSFlTOwogCi0Ja3VkZXYt
PmRldiA9IGRldmljZV9jcmVhdGUoa3BjX3Vpb19jbGFzcywgJnBjYXJkLT5wZGV2LT5kZXYsIE1L
REVWKDAsMCksIGt1ZGV2LCAiJXMuJWQuJWQuJWQiLCBrdWRldi0+dWlvaW5mby5uYW1lLCBwY2Fy
ZC0+Y2FyZF9udW0sIGN0ZS50eXBlLCBrdWRldi0+Y29yZV9udW0pOworCWt1ZGV2LT5kZXYgPSBk
ZXZpY2VfY3JlYXRlKGtwY191aW9fY2xhc3MsICZwY2FyZC0+cGRldi0+ZGV2LCBNS0RFVigwLCAw
KSwga3VkZXYsICIlcy4lZC4lZC4lZCIsIGt1ZGV2LT51aW9pbmZvLm5hbWUsIHBjYXJkLT5jYXJk
X251bSwgY3RlLnR5cGUsIGt1ZGV2LT5jb3JlX251bSk7CiAJaWYgKElTX0VSUihrdWRldi0+ZGV2
KSkgewogCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAicHJvYmVfY29yZV91aW8gZGV2aWNl
X2NyZWF0ZSBmYWlsZWQhXG4iKTsKIAkJa2ZyZWUoa3VkZXYpOwotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
