Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F29080D04
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE1E854E5;
	Sun,  4 Aug 2019 22:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMs3w09OMhUD; Sun,  4 Aug 2019 22:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4ECEC8545B;
	Sun,  4 Aug 2019 22:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CE211BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79DED20459
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7bTpUoPGvs3M for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C89D20483
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:27 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f17so34607026pfn.6
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VkIZ9MNYeaRKdR8dFo+dHbwqWBHsgbjux0NTtbbQ8Os=;
 b=DhwBCoFCjpXXdmoliRK4JR+mRQlogKVYcH9LUuFtCy5jqYLU3k2OV3s9LP9elRQpt2
 2Qt+Jvy9o/orbaOtkd5nujRaPffgwNAgLXVc5HDVur7G30S2Sl9zwlVnpzafHXHFDZ1Y
 umZN5BHQdMTYT4X05o9uchQBU3Ah8LnDb0ocwD8ZU/M3RqzWJ8pCyTsH7SaHwW7GrjOD
 aK4wvB8Fvq+qEmTkGzq512g25DZ6euAbWJjnzFQ81OfVHghvVkS7cIlTWY1k0D9tavPD
 XawoZ7kFyduEl8FG9r2zLh1TsUY0NTur+fJ3ZJLf5PCbd+OiidMkSeuctXmr4WSpmpht
 zqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VkIZ9MNYeaRKdR8dFo+dHbwqWBHsgbjux0NTtbbQ8Os=;
 b=pJZ9hB7Z1ctOjwI1uaA8oZG681hxyk7y/Aj1Y0v8BfK6Uf4Ox7k/oSUFk6hKqJ3592
 DHLx+p1cHTZMKCZgiLaZ0ojWO0zHUCuVwV5ggh7Ly+iEX3+TcGLD28nHYApVmZTLCbT0
 cX4Z9l7Vhvav58e5faFkN/I2v0jdqAH9+NEB2WLEVMsXg25ta+obV30/pAqmv5yVaHtC
 aJPG4gjf7aR3j81v6sq+NHQIegtJaHuvMpZp3aPK+16ZBKK52eDsAf+TbKN16ZBrp+NQ
 +6Ijh01IrTfRq0dNrWdctsZkOeGzF0YiAzeM+9ffwenCjFfnGBmf843H1/0VAYE8nk/w
 xscQ==
X-Gm-Message-State: APjAAAVVplQwK4CRKYFK0VlGAfIjaQlTX7Ulynctukz2Ug2G2KRAclHz
 jbP+gk91r2FQ5X8jBIW/WwjU3epM
X-Google-Smtp-Source: APXvYqzRKprB2NEk077YJTrqhmGmbwyku3vUkgW0ycQFuEdLCQ5MyA814ojj8/NKptlwnKhmOHLKBQ==
X-Received: by 2002:a65:6815:: with SMTP id l21mr45892702pgt.146.1564958966963; 
 Sun, 04 Aug 2019 15:49:26 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:26 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 05/34] drm/etnaviv: convert release_pages() to
 put_user_pages()
Date: Sun,  4 Aug 2019 15:48:46 -0700
Message-Id: <20190804224915.28669-6-jhubbard@nvidia.com>
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
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "H . Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, linux-rpi-kernel@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogSm9lcmcg
Um9lZGVsIDxqb3JvQDhieXRlcy5vcmc+CkNjOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRo
YXQuY29tPgpDYzogUmFkaW0gS3LEjW3DocWZIDxya3JjbWFyQHJlZGhhdC5jb20+CkNjOiBUaG9t
YXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0By
ZWRoYXQuY29tPgpDYzogQm9yaXNsYXYgUGV0a292IDxicEBhbGllbjguZGU+CkNjOiBILiBQZXRl
ciBBbnZpbiA8aHBhQHp5dG9yLmNvbT4KQ2M6IHg4NkBrZXJuZWwub3JnCkNjOiBrdm1Admdlci5r
ZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCmluZGV4IGU4Nzc4ZWJiNzJlNi4uYTAxNDRhNWVlMzI1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKQEAgLTY4Niw3ICs2ODYsNyBA
QCBzdGF0aWMgaW50IGV0bmF2aXZfZ2VtX3VzZXJwdHJfZ2V0X3BhZ2VzKHN0cnVjdCBldG5hdml2
X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQogCQlyZXQgPSBnZXRfdXNlcl9wYWdlc19mYXN0KHB0
ciwgbnVtX3BhZ2VzLAogCQkJCQkgICF1c2VycHRyLT5ybyA/IEZPTExfV1JJVEUgOiAwLCBwYWdl
cyk7CiAJCWlmIChyZXQgPCAwKSB7Ci0JCQlyZWxlYXNlX3BhZ2VzKHB2ZWMsIHBpbm5lZCk7CisJ
CQlwdXRfdXNlcl9wYWdlcyhwdmVjLCBwaW5uZWQpOwogCQkJa3ZmcmVlKHB2ZWMpOwogCQkJcmV0
dXJuIHJldDsKIAkJfQpAQCAtNzEwLDcgKzcxMCw3IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2Vt
X3VzZXJwdHJfcmVsZWFzZShzdHJ1Y3QgZXRuYXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iaikK
IAlpZiAoZXRuYXZpdl9vYmotPnBhZ2VzKSB7CiAJCWludCBucGFnZXMgPSBldG5hdml2X29iai0+
YmFzZS5zaXplID4+IFBBR0VfU0hJRlQ7CiAKLQkJcmVsZWFzZV9wYWdlcyhldG5hdml2X29iai0+
cGFnZXMsIG5wYWdlcyk7CisJCXB1dF91c2VyX3BhZ2VzKGV0bmF2aXZfb2JqLT5wYWdlcywgbnBh
Z2VzKTsKIAkJa3ZmcmVlKGV0bmF2aXZfb2JqLT5wYWdlcyk7CiAJfQogfQotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
