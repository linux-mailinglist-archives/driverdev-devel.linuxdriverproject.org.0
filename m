Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891BE2257E
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFB3987C16;
	Sat, 18 May 2019 22:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYzQAxub-SGw; Sat, 18 May 2019 22:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16B40857B2;
	Sat, 18 May 2019 22:51:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 767FC1BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73EEB86D5A
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gw1gVXMa954N for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:51:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29369857B2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:50:06 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id m32so12241494qtf.0
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jKyoBKDfoJbBN8ZdJzWAMlrp7KnkxmJ6vA1sEgIrsvE=;
 b=yV+S7pgOzzbyCqFkDCEFt0jhKExLmBzHHNuFwDdEIcxQn5lVwe5+Ot/pPsbp6E5q8g
 rk06n2713VHScfotxZp0imBhciMduhnW/ffhbngY0mVadoR6Z5AL8R9U8KiPtGRD/iqp
 woGi14VDZQfa6B04dZpDqplOdtMXBP1UtmmS9FaMnNclaMpARA9/pd+hmMZdnpM1H3b6
 9c+AxHTuPJu9v2Q3me5urcxy63wtrCvm4Q3pRRsbd3AGZOYitI76awJuBU8INCVCtCBP
 ukFQnjaGwBUirqT9BakPf/qp1Kse+CKHt2kshrp0ugBPrPfTtSMo/Xg7AN4IVLkLp+Wr
 DG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jKyoBKDfoJbBN8ZdJzWAMlrp7KnkxmJ6vA1sEgIrsvE=;
 b=cKc5SXB4onGUs06HmxDBD+aVh+Rfy5m9GIFs4M+VRgCEzqYLjBpr9XyC/+5/A5U1hp
 lj9GOzVmoeXjoERQzSLVq3aRELZNanG3jZqt7NrzLjqSNvTEPHSHG/oeqvOrDsU5ShZk
 CqJ9NFsIrCv35cHPOaiBljgcdybgPcYKuXEcJtAECULmvODu+ODm2vldyRGJEDlYc+M5
 augFQL6S+nNcDExxNE0t2s6O3YkjOcbZwnhhWJSKQkUnX9wLT/XbTzqs6FC3TomgbJ8K
 CQothwBT0hZ41gvfdRonvUOZVFPbpwQEBro2SxEwEFrexONtUpgKtscgHhK/fTiXz/Lt
 +lYQ==
X-Gm-Message-State: APjAAAXiS61H6zIAOqA4YbrpEMtDyZ2IJoe/YTGYlsNduH+nZBv6mgtH
 ejEjtBhrkoK6qIzkQ6V7D45UGw==
X-Google-Smtp-Source: APXvYqwe6b/2fIeowTUPXLJW6AzydKeOoAwyOiyvZxsj2W75hS42mLp/UENCdlPbJiN4ffKnlk51Yg==
X-Received: by 2002:ac8:1a62:: with SMTP id q31mr16565529qtk.25.1558219318006; 
 Sat, 18 May 2019 15:41:58 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id d32sm7348992qtk.0.2019.05.18.15.41.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:41:57 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: iio: cdc: ad7150: create macro for capacitance
 channels
Date: Sat, 18 May 2019 19:41:36 -0300
Message-Id: <20190518224136.16942-3-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.22.0.rc0.1.g337bb99195.dirty
In-Reply-To: <20190518224136.16942-1-barbara.fernandes@usp.br>
References: <20190518224136.16942-1-barbara.fernandes@usp.br>
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

Q3JlYXRlIG1hY3JvIGZvciBjYXBhY2l0YW5jZSBjaGFubmVscyBpbiBvcmRlciB0byByZW1vdmUg
dGhlIHJlcGVhdGVkCmNvZGUgYW5kIGltcHJvdmUgaXRzIHJlYWRhYmlsaXR5LgoKU2lnbmVkLW9m
Zi1ieTogQsOhcmJhcmEgRmVybmFuZGVzIDxiYXJiYXJhLmZlcm5hbmRlc0B1c3AuYnI+ClNpZ25l
ZC1vZmYtYnk6IFdpbHNvbiBTYWxlcyA8c3Bvb25tQHNwb29ubS5vcmc+CkNvLWRldmVsb3BlZC1i
eTogV2lsc29uIFNhbGVzIDxzcG9vbm1Ac3Bvb25tLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
aWlvL2NkYy9hZDcxNTAuYyB8IDI5ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3MTUwLmMgYi9kcml2ZXJzL3N0YWdpbmcvaWlv
L2NkYy9hZDcxNTAuYwppbmRleCAwNzIwOTQyMjdlMWIuLmQ4YzQzY2FiY2UyNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL2lpby9jZGMvYWQ3MTUwLmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L2lpby9jZGMvYWQ3MTUwLmMKQEAgLTQ2OCwyNCArNDY4LDE5IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaWlvX2V2ZW50X3NwZWMgYWQ3MTUwX2V2ZW50c1tdID0gewogCX0sCiB9OwogCisjZGVmaW5l
IEFENzE1MF9DQVBBQ0lUQU5DRV9DSEFOKF9jaGFuKQl7CQkJXAorCQkudHlwZSA9IElJT19DQVBB
Q0lUQU5DRSwJCQlcCisJCS5pbmRleGVkID0gMSwJCQkJCVwKKwkJLmNoYW5uZWwgPSBfY2hhbiwJ
CQkJXAorCQkuaW5mb19tYXNrX3NlcGFyYXRlID0gQklUKElJT19DSEFOX0lORk9fUkFXKSB8CVwK
KwkJQklUKElJT19DSEFOX0lORk9fQVZFUkFHRV9SQVcpLAkJCVwKKwkJLmV2ZW50X3NwZWMgPSBh
ZDcxNTBfZXZlbnRzLAkJCVwKKwkJLm51bV9ldmVudF9zcGVjcyA9IEFSUkFZX1NJWkUoYWQ3MTUw
X2V2ZW50cyksCVwKKwl9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWlvX2NoYW5fc3BlYyBhZDcx
NTBfY2hhbm5lbHNbXSA9IHsKLQl7Ci0JCS50eXBlID0gSUlPX0NBUEFDSVRBTkNFLAotCQkuaW5k
ZXhlZCA9IDEsCi0JCS5jaGFubmVsID0gMCwKLQkJLmluZm9fbWFza19zZXBhcmF0ZSA9IEJJVChJ
SU9fQ0hBTl9JTkZPX1JBVykgfAotCQlCSVQoSUlPX0NIQU5fSU5GT19BVkVSQUdFX1JBVyksCi0J
CS5ldmVudF9zcGVjID0gYWQ3MTUwX2V2ZW50cywKLQkJLm51bV9ldmVudF9zcGVjcyA9IEFSUkFZ
X1NJWkUoYWQ3MTUwX2V2ZW50cyksCi0JfSwgewotCQkudHlwZSA9IElJT19DQVBBQ0lUQU5DRSwK
LQkJLmluZGV4ZWQgPSAxLAotCQkuY2hhbm5lbCA9IDEsCi0JCS5pbmZvX21hc2tfc2VwYXJhdGUg
PSBCSVQoSUlPX0NIQU5fSU5GT19SQVcpIHwKLQkJQklUKElJT19DSEFOX0lORk9fQVZFUkFHRV9S
QVcpLAotCQkuZXZlbnRfc3BlYyA9IGFkNzE1MF9ldmVudHMsCi0JCS5udW1fZXZlbnRfc3BlY3Mg
PSBBUlJBWV9TSVpFKGFkNzE1MF9ldmVudHMpLAotCX0sCisJQUQ3MTUwX0NBUEFDSVRBTkNFX0NI
QU4oMCksCisJQUQ3MTUwX0NBUEFDSVRBTkNFX0NIQU4oMSkKIH07CiAKIC8qCi0tIAoyLjIyLjAu
cmMwLjEuZzMzN2JiOTkxOTUuZGlydHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
