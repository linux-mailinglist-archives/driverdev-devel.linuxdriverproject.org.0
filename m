Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6860D7E7FD
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49B72878BB;
	Fri,  2 Aug 2019 02:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1y3SHD6swJX; Fri,  2 Aug 2019 02:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32117878B7;
	Fri,  2 Aug 2019 02:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB17E1BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7929883C6
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSpVwg72O+0M for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EAB9F883C0
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:19 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w24so33011706plp.2
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pwlX9Z4uen7Ts0pUwmBLgDhtihaB/D0UZN8JDoMe4ZA=;
 b=cXVKp+Dgxhj784uTGfvPyG1yYJG0TluF022pFhUyHpRdik351Pihe9of7XZeuP0Vwt
 h/i6WlGcIKVNKfHSeDSEUHKJX3j3X/NshFFci/lhMH4/SgEjIokRiJ+YouFN6I+GBm4y
 zUjQOfq6557LaDfB1SW3dyyvMia7x+7GSnkQpaKA5dSoAhqdxSb/NVVqK5YIHjTvA0IX
 6H4EsdOomJX2kg/hRhJVVxm3sX/zmn87r9Fum/tKlkDFYTmAnDUVoJ7rlCgUuzHH8DwS
 QuPnhojZwqXr2XSW6HhlWm7VIgfEjZi50Ea1bZ4R+3m+Y3fnnezSFaVuWGen2JpYqC8g
 nI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pwlX9Z4uen7Ts0pUwmBLgDhtihaB/D0UZN8JDoMe4ZA=;
 b=NxUbKUZOCizc9ZyrRw7Aiazo2rtV0UocYj1RooA2gYKZ5p+btoGk8vO90ovVBFcrr6
 hcNEqR3WdYdOcLz0yCsc38n+10PKPeHdjhCX9im9Ht5/2a1fqRjzz8o2SK7WW3Qd2tvv
 pYZ+pF3yXGanKNRryFWPQJSsgoZS8w4Zc/Teoo8bvNtem6kpxgDLQQw/sfF0FMJ5trK1
 Y9coid/zCD2b7/z7xdXWLem8mMJEBq8lIhgI0YEopRuCQd0OoSZeQTbwg/I+R/AApSoD
 gfCQxA4dCXIn5hkvqYCxWctOBBX3KzVMGVRQkwVnLJENDmR7laY7cEd50EWnnqxmRQLH
 ULsQ==
X-Gm-Message-State: APjAAAWbCD0md6fKHzQZJ85RogQ5oqnlIvtBiN1Ll+OQzyX93VE5vftf
 qlut9Der3MXyXU4ElcXjfsI=
X-Google-Smtp-Source: APXvYqzjw3eL+xmFFeLCY8pAtt0uU+dboybjV0Tj2XnMiuSE8KPva7u+GlTOi6iXLJ1oNBX2ZlUCDA==
X-Received: by 2002:a17:902:a413:: with SMTP id
 p19mr129958448plq.134.1564712419691; 
 Thu, 01 Aug 2019 19:20:19 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:19 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 05/34] drm/etnaviv: convert release_pages() to put_user_pages()
Date: Thu,  1 Aug 2019 19:19:36 -0700
Message-Id: <20190802022005.5117-6-jhubbard@nvidia.com>
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
YXQuY29tPgpDYzogIlJhZGltIEtyxI1tw6HFmSIgPHJrcmNtYXJAcmVkaGF0LmNvbT4KQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdv
QHJlZGhhdC5jb20+CkNjOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQGFsaWVuOC5kZT4KQ2M6ICJILiBQ
ZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNjOiB4ODZAa2VybmVsLm9yZwpDYzoga3ZtQHZn
ZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRp
YS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwppbmRleCBlODc3OGViYjcyZTYuLmEwMTQ0YTVl
ZTMyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC02ODYsNyArNjg2
LDcgQEAgc3RhdGljIGludCBldG5hdml2X2dlbV91c2VycHRyX2dldF9wYWdlcyhzdHJ1Y3QgZXRu
YXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iaikKIAkJcmV0ID0gZ2V0X3VzZXJfcGFnZXNfZmFz
dChwdHIsIG51bV9wYWdlcywKIAkJCQkJICAhdXNlcnB0ci0+cm8gPyBGT0xMX1dSSVRFIDogMCwg
cGFnZXMpOwogCQlpZiAocmV0IDwgMCkgewotCQkJcmVsZWFzZV9wYWdlcyhwdmVjLCBwaW5uZWQp
OworCQkJcHV0X3VzZXJfcGFnZXMocHZlYywgcGlubmVkKTsKIAkJCWt2ZnJlZShwdmVjKTsKIAkJ
CXJldHVybiByZXQ7CiAJCX0KQEAgLTcxMCw3ICs3MTAsNyBAQCBzdGF0aWMgdm9pZCBldG5hdml2
X2dlbV91c2VycHRyX3JlbGVhc2Uoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9v
YmopCiAJaWYgKGV0bmF2aXZfb2JqLT5wYWdlcykgewogCQlpbnQgbnBhZ2VzID0gZXRuYXZpdl9v
YmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCi0JCXJlbGVhc2VfcGFnZXMoZXRuYXZpdl9v
YmotPnBhZ2VzLCBucGFnZXMpOworCQlwdXRfdXNlcl9wYWdlcyhldG5hdml2X29iai0+cGFnZXMs
IG5wYWdlcyk7CiAJCWt2ZnJlZShldG5hdml2X29iai0+cGFnZXMpOwogCX0KIH0KLS0gCjIuMjIu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
