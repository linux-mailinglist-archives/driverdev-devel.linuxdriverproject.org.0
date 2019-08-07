Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEF183F4B
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2722C84442;
	Wed,  7 Aug 2019 01:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aDauVpFVRitX; Wed,  7 Aug 2019 01:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA80886BCF;
	Wed,  7 Aug 2019 01:34:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 672221BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6455187E7A
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mp0ces9YJiFP for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4874787D8B
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:47 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id u17so42544369pgi.6
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H0Etnn7JHR8H7TocLV05oLauZ77NAi3PGTTr9FTaKTw=;
 b=eS3YB7ZT4YXwuCcgQbB/xbD+n10dBypw+iZZVQIUwi66vhDfcSIp39QkGkG7an7OJl
 OiukENJvNGRlLtpSvoOFB7XysgcSlBHri3dSlfLLl2JoybffI8wnImTZeHQEdnORxVLa
 EBXGZhIf+YSKbjfkupoovScD765pOoXW+wmQ3q47Y78G67P4azJFj7Z03p0IlFla0TF0
 WGS9epzDu3lNP0Hir82G8T/Dsucq+VMZQ717BtULEmOp/zZ+HeTgTfaZfag+K5X0r5bl
 +CKlJZyT3xTot1t0x6sX+RloIZlzVtbmPtAqvydRbxbh9+Ay6+ppy+Ss6WRVBPk23UrF
 ZgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H0Etnn7JHR8H7TocLV05oLauZ77NAi3PGTTr9FTaKTw=;
 b=jKo6jtJ6iPVkWHiUXF7b7ZOwpAT7BZv+CusItJdtEz8v6bcicaLqw4jXQ0I8qjZ7sc
 culvXLd7QMjrXrLcPdkqf+kwTOtZssDq8D+5+hlSb/+OSUPn8sh4j/dXkIGdgmybFN0e
 gT74hCZ71a/jBj8CP4tcV2mLf7yS/ga9VY3TjwLyw08CgJZzbdOqVIadOgwq3FoZ+L8g
 LXjBmXXiyoFPPq8i0hB9pNlx8T7B+/Dk5GRiGSVJGqs2ltjZXUPwkWsCddYA1dX7XXuZ
 40aBIrOLClGHOGaCEZHohATDkiZWkPKLzz48bSEEHphfHdpUrEH53ZQbzIkFeo1XEiaR
 Dphw==
X-Gm-Message-State: APjAAAVJHY3crWLWYnW2tPAe+3MNWJJXUpQY5lqNGwN3APQGZeIqHbp/
 SEe8EQ6I/Cqk6xfQnfSbsdk=
X-Google-Smtp-Source: APXvYqzWWP/A0o9J09jCJjajCJWgGO/EPyZUANiBcpDufZXSuOwgzfu98JYNHWmK3CJ1oF9MD+qnUg==
X-Received: by 2002:aa7:8201:: with SMTP id k1mr6559788pfi.97.1565141687010;
 Tue, 06 Aug 2019 18:34:47 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:46 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 39/41] mm/mlock.c: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:38 -0700
Message-Id: <20190807013340.9706-40-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
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
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Daniel Black <daniel@linux.ibm.com>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogRGFuIFdp
bGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+CkNjOiBEYW5pZWwgQmxhY2sgPGRhbmll
bEBsaW51eC5pYm0uY29tPgpDYzogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KQ2M6IErDqXLDtG1l
IEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGlu
ZnJhZGVhZC5vcmc+CkNjOiBNaWtlIEtyYXZldHogPG1pa2Uua3JhdmV0ekBvcmFjbGUuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Ci0tLQogbW0v
bWxvY2suYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL21sb2NrLmMgYi9tbS9tbG9jay5jCmluZGV4IGE5
MDA5OWRhNGZiNC4uYjk4MGU2MjcwZThhIDEwMDY0NAotLS0gYS9tbS9tbG9jay5jCisrKyBiL21t
L21sb2NrLmMKQEAgLTM0NSw3ICszNDUsNyBAQCBzdGF0aWMgdm9pZCBfX211bmxvY2tfcGFnZXZl
YyhzdHJ1Y3QgcGFnZXZlYyAqcHZlYywgc3RydWN0IHpvbmUgKnpvbmUpCiAJCQkJZ2V0X3BhZ2Uo
cGFnZSk7IC8qIGZvciBwdXRiYWNrX2xydV9wYWdlKCkgKi8KIAkJCQlfX211bmxvY2tfaXNvbGF0
ZWRfcGFnZShwYWdlKTsKIAkJCQl1bmxvY2tfcGFnZShwYWdlKTsKLQkJCQlwdXRfcGFnZShwYWdl
KTsgLyogZnJvbSBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KKwkJCQlwdXRfdXNlcl9wYWdlKHBhZ2Up
OyAvKiBmcm9tIGZvbGxvd19wYWdlX21hc2soKSAqLwogCQkJfQogCQl9CiAJfQpAQCAtNDY3LDcg
KzQ2Nyw3IEBAIHZvaWQgbXVubG9ja192bWFfcGFnZXNfcmFuZ2Uoc3RydWN0IHZtX2FyZWFfc3Ry
dWN0ICp2bWEsCiAJCWlmIChwYWdlICYmICFJU19FUlIocGFnZSkpIHsKIAkJCWlmIChQYWdlVHJh
bnNUYWlsKHBhZ2UpKSB7CiAJCQkJVk1fQlVHX09OX1BBR0UoUGFnZU1sb2NrZWQocGFnZSksIHBh
Z2UpOwotCQkJCXB1dF9wYWdlKHBhZ2UpOyAvKiBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KKwkJCQlw
dXRfdXNlcl9wYWdlKHBhZ2UpOyAvKiBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KIAkJCX0gZWxzZSBp
ZiAoUGFnZVRyYW5zSHVnZShwYWdlKSkgewogCQkJCWxvY2tfcGFnZShwYWdlKTsKIAkJCQkvKgpA
QCAtNDc4LDcgKzQ3OCw3IEBAIHZvaWQgbXVubG9ja192bWFfcGFnZXNfcmFuZ2Uoc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsCiAJCQkJICovCiAJCQkJcGFnZV9tYXNrID0gbXVubG9ja192bWFf
cGFnZShwYWdlKTsKIAkJCQl1bmxvY2tfcGFnZShwYWdlKTsKLQkJCQlwdXRfcGFnZShwYWdlKTsg
LyogZm9sbG93X3BhZ2VfbWFzaygpICovCisJCQkJcHV0X3VzZXJfcGFnZShwYWdlKTsgLyogZm9s
bG93X3BhZ2VfbWFzaygpICovCiAJCQl9IGVsc2UgewogCQkJCS8qCiAJCQkJICogTm9uLWh1Z2Ug
cGFnZXMgYXJlIGhhbmRsZWQgaW4gYmF0Y2hlcyB2aWEKLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
