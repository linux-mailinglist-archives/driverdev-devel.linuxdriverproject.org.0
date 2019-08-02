Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A997E801
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 360C488418;
	Fri,  2 Aug 2019 02:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D-y0pDudWAuH; Fri,  2 Aug 2019 02:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F7F0883CC;
	Fri,  2 Aug 2019 02:20:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4931BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 807AB22E6E
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m92tyfgkz0gL for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C6F222E54
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:18 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id t16so35122112pfe.11
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8SOviSW3O4erJ4o/T7vOdTDRu8uyyXM9kIDmKsHyj7c=;
 b=fX9VH11/xtmCZY5ktyfRXv+8oFT24qnzRAke9R5fEGSeD2IzOy84ZG8im/eaEUg8Lt
 YkXZtAgFC41AXSsr/ysnzaRAFRybM7sVVSGjTeMscCtwe6TgKQtIwxVTNVhX+CyOlaHj
 zyT65gbiAfpxTAt1YaJp886/lI6PgypiCjw7omXplGhR0qwXivcLAeNmtsNmtXQS2+4w
 xqKa+JcZGRrR5eWJB589WBbm/hXzKEauxkOa/UURNDAyCoi6UPYtZRE7atesr45WwiIq
 ErXdMxUJmMSia9/QMT7Nme9zP4x0BmIDxW3018QpZobBFVGv7P1VjjU6MaObsA2EybjP
 VU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8SOviSW3O4erJ4o/T7vOdTDRu8uyyXM9kIDmKsHyj7c=;
 b=GZTRDuD9LpLlQ7pxe3P9VKqEua4SmWts6eSPFxfT75pRpha8tuHfOHQw/7byYcQUSY
 +S/oTg2C+1tTAk8i5UbuAHk0R85KAi8a/uH4WJTmsJ9Nj7/AGrVqRSRvfcyWuKZhEGO0
 8c42oMn+nNlGeVIYc/wNQVGMDjbY715XQu/YawBs0wBwiTbL7RCNEnKXsshmDIz/ihYn
 vCVY05uVikBFzaoMI/8v47V/T+f3C1pBu0fbuJsG0X4bV/R9FHVzJdZJfi6445XljOT+
 c481CwhLuL1IoaoKLD2lmsKe3mbWKZNfPdmPZ6z54UccQV0WNvVHXucc3SrHFg21HQ3C
 bmQw==
X-Gm-Message-State: APjAAAUxHXXl+ghc5spqjkndIJtl49GY00z0aczFDn0tz7Y93iTC9lmx
 OdapNecwy+4T+LrToCgN93M=
X-Google-Smtp-Source: APXvYqy6SxWBaLdRR2vg6Lx/woJAETS/7eDG5dTzML6C7DLLIiEKJ1wWpgVv8K7hxMNjNoQ+Y+s8Dw==
X-Received: by 2002:a17:90a:8c92:: with SMTP id
 b18mr1836391pjo.97.1564712418017; 
 Thu, 01 Aug 2019 19:20:18 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:17 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 04/34] x86/kvm: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:35 -0700
Message-Id: <20190802022005.5117-5-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKS4KClRoaXMgaXMgcGFydCBhIHRyZWUtd2lkZSBjb252ZXJzaW9uLCBhcyBkZXNjcmli
ZWQgaW4gY29tbWl0IGZjMWQ4ZTdjY2EyZAooIm1tOiBpbnRyb2R1Y2UgcHV0X3VzZXJfcGFnZSoo
KSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KCkNjOiBKb2VyZyBSb2VkZWwgPGpvcm9AOGJ5dGVz
Lm9yZz4KQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+CkNjOiAiUmFkaW0g
S3LEjW3DocWZIiA8cmtyY21hckByZWRoYXQuY29tPgpDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4
QGxpbnV0cm9uaXguZGU+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4KQ2M6ICJI
LiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNjOiB4ODZAa2VybmVsLm9yZwpDYzoga3Zt
QHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52
aWRpYS5jb20+Ci0tLQogYXJjaC94ODYva3ZtL3N2bS5jICB8IDQgKystLQogdmlydC9rdm0va3Zt
X21haW4uYyB8IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYva3ZtL3N2bS5jIGIvYXJjaC94ODYva3Zt
L3N2bS5jCmluZGV4IDdlYWZjNjkwNzg2MS4uZmY5M2M5MjNlZDM2IDEwMDY0NAotLS0gYS9hcmNo
L3g4Ni9rdm0vc3ZtLmMKKysrIGIvYXJjaC94ODYva3ZtL3N2bS5jCkBAIC0xODI3LDcgKzE4Mjcs
NyBAQCBzdGF0aWMgc3RydWN0IHBhZ2UgKipzZXZfcGluX21lbW9yeShzdHJ1Y3Qga3ZtICprdm0s
IHVuc2lnbmVkIGxvbmcgdWFkZHIsCiAKIGVycjoKIAlpZiAobnBpbm5lZCA+IDApCi0JCXJlbGVh
c2VfcGFnZXMocGFnZXMsIG5waW5uZWQpOworCQlwdXRfdXNlcl9wYWdlcyhwYWdlcywgbnBpbm5l
ZCk7CiAKIAlrdmZyZWUocGFnZXMpOwogCXJldHVybiBOVUxMOwpAQCAtMTgzOCw3ICsxODM4LDcg
QEAgc3RhdGljIHZvaWQgc2V2X3VucGluX21lbW9yeShzdHJ1Y3Qga3ZtICprdm0sIHN0cnVjdCBw
YWdlICoqcGFnZXMsCiB7CiAJc3RydWN0IGt2bV9zZXZfaW5mbyAqc2V2ID0gJnRvX2t2bV9zdm0o
a3ZtKS0+c2V2X2luZm87CiAKLQlyZWxlYXNlX3BhZ2VzKHBhZ2VzLCBucGFnZXMpOworCXB1dF91
c2VyX3BhZ2VzKHBhZ2VzLCBucGFnZXMpOwogCWt2ZnJlZShwYWdlcyk7CiAJc2V2LT5wYWdlc19s
b2NrZWQgLT0gbnBhZ2VzOwogfQpkaWZmIC0tZ2l0IGEvdmlydC9rdm0va3ZtX21haW4uYyBiL3Zp
cnQva3ZtL2t2bV9tYWluLmMKaW5kZXggODg3ZjNiMGMyYjYwLi40YjZhNTk2ZWE4ZTkgMTAwNjQ0
Ci0tLSBhL3ZpcnQva3ZtL2t2bV9tYWluLmMKKysrIGIvdmlydC9rdm0va3ZtX21haW4uYwpAQCAt
MTQ5OSw3ICsxNDk5LDcgQEAgc3RhdGljIGludCBodmFfdG9fcGZuX3Nsb3codW5zaWduZWQgbG9u
ZyBhZGRyLCBib29sICphc3luYywgYm9vbCB3cml0ZV9mYXVsdCwKIAogCQlpZiAoX19nZXRfdXNl
cl9wYWdlc19mYXN0KGFkZHIsIDEsIDEsICZ3cGFnZSkgPT0gMSkgewogCQkJKndyaXRhYmxlID0g
dHJ1ZTsKLQkJCXB1dF9wYWdlKHBhZ2UpOworCQkJcHV0X3VzZXJfcGFnZShwYWdlKTsKIAkJCXBh
Z2UgPSB3cGFnZTsKIAkJfQogCX0KQEAgLTE4MzEsNyArMTgzMSw3IEBAIEVYUE9SVF9TWU1CT0xf
R1BMKGt2bV9yZWxlYXNlX3BhZ2VfY2xlYW4pOwogdm9pZCBrdm1fcmVsZWFzZV9wZm5fY2xlYW4o
a3ZtX3Bmbl90IHBmbikKIHsKIAlpZiAoIWlzX2Vycm9yX25vc2xvdF9wZm4ocGZuKSAmJiAha3Zt
X2lzX3Jlc2VydmVkX3BmbihwZm4pKQotCQlwdXRfcGFnZShwZm5fdG9fcGFnZShwZm4pKTsKKwkJ
cHV0X3VzZXJfcGFnZShwZm5fdG9fcGFnZShwZm4pKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGt2
bV9yZWxlYXNlX3Bmbl9jbGVhbik7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
