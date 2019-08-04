Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 008EB80D58
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95191865D6;
	Sun,  4 Aug 2019 22:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcIWHmP+iG7v; Sun,  4 Aug 2019 22:50:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC7BA864F6;
	Sun,  4 Aug 2019 22:50:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 745351BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6ACDF864F4
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tz0C-7rq0-uA for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 246AE86503
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:04 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id az7so35653053plb.5
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Puv5caB6Xd1AJbwd7nGzyFKNouoVWAfL+vJwz/b+4QQ=;
 b=n2GzADBCRaGfCHf6HbXgRg+V0C89X4GtWNxkv2j3+LQsrqKpmTUVe0ByTHKQwdeBJn
 2GjNEQhUsYm7dhY4Od2Sd6r20534hykhUqRe4t1VnKwQ4DMvNZ5YhS01Fzzgrjh0SFnz
 cOALy97h5W1lbkzKyPwHr+vFBFBbcXlcy5zpFAQBNWN4n0Cj0kftmPhY24PBwGy3tLN5
 iaVwvJuxvheoQgKbgYArnZAnGqCyndt7VZwBKzGO0BC6OrGMqarpUlPnyV+UVYDmCU/k
 M/mEk0A479arzsza58VY7eIxZdZ0ZSau4HrT6ltuIf1VzdnlaHlbMs8Cfp7zJmoWUVEJ
 eBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Puv5caB6Xd1AJbwd7nGzyFKNouoVWAfL+vJwz/b+4QQ=;
 b=i5axyRstYMYRxA9IZ/lALrZwwvvlb2LoZTgCCQlUcb8i04L34VfebeDXljnFapXwL6
 OL80zQoXGeRad2my51ecg4WwqNpOnPaZgAeLn8+xjfK2g6WtbakZY9/YH1EF1cqN1Hr2
 J7u56vdlJYXn/b6spHN6rcRmv4sLtv/G25HWQlM4Kcjov1ySvXkdrtQxzj6rIvK4zqoR
 2I8xjndHurK773M6TNk9LWuXyP5wZ3O8h0Vly7YlxaQKA0SN8B0XU/Kbz1uvyp+KYiSu
 hC8t+SifY2NPysElbgmbx/bnY1ambqb2IZrkuoayzYujvHc11u7CxHTI9mE3/fuz5Sww
 e8sQ==
X-Gm-Message-State: APjAAAUBtCwjrq7Ky0h1yyhkRllItepE/+hWhUG/7PlNsBMM8j1up2I5
 wf2Oaa2dr1LdB77TZUF+ThlnDI5c
X-Google-Smtp-Source: APXvYqwABL/owZcbuKs02BqFh/fswcnIOGTkP8u9lrE9SbNiB96M9TYbiEw8R+LSl6DRBzA56M1pUA==
X-Received: by 2002:a17:902:bb81:: with SMTP id
 m1mr58194086pls.125.1564959003903; 
 Sun, 04 Aug 2019 15:50:03 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:03 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 28/34] mm/madvise.c: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:09 -0700
Message-Id: <20190804224915.28669-29-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
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
bWFkdmlzZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbW0vbWFkdmlzZS5jIGIvbW0vbWFkdmlzZS5jCmluZGV4IDk2
OGRmM2FhMDY5Zi4uMWM2ODgxYTc2MWE1IDEwMDY0NAotLS0gYS9tbS9tYWR2aXNlLmMKKysrIGIv
bW0vbWFkdmlzZS5jCkBAIC02NzIsNyArNjcyLDcgQEAgc3RhdGljIGludCBtYWR2aXNlX2luamVj
dF9lcnJvcihpbnQgYmVoYXZpb3IsCiAJCSAqIHJvdXRpbmUgaXMgcmVzcG9uc2libGUgZm9yIHBp
bm5pbmcgdGhlIHBhZ2UgdG8gcHJldmVudCBpdAogCQkgKiBmcm9tIGJlaW5nIHJlbGVhc2VkIGJh
Y2sgdG8gdGhlIHBhZ2UgYWxsb2NhdG9yLgogCQkgKi8KLQkJcHV0X3BhZ2UocGFnZSk7CisJCXB1
dF91c2VyX3BhZ2UocGFnZSk7CiAJCXJldCA9IG1lbW9yeV9mYWlsdXJlKHBmbiwgMCk7CiAJCWlm
IChyZXQpCiAJCQlyZXR1cm4gcmV0OwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
