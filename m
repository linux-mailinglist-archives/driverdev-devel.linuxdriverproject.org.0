Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1172B83EEE
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DEB787ECD;
	Wed,  7 Aug 2019 01:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPvLdc7m0oRZ; Wed,  7 Aug 2019 01:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1BD387BD3;
	Wed,  7 Aug 2019 01:34:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2FC91BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6499C87397
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdDkY1KWy1Cv for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:33:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7DF787BD3
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:33:54 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id ay6so38635017plb.9
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o0zfkIFt+6JH2qCeaVwPptBUW8DYTI9b55PprZaXkM8=;
 b=JTummjFBnv/C+O19cpD5WnNljDRNFTGhD+ZhdI4mJ0KthoLkEPnz/XxGJof7+/5P4n
 NHHwYbiLQNiC7TcqgsQ/ovMZm7D6aJYiNSrmCXoGWlQrghDLY3t836yj0IsY0+4YC7xI
 eQkZg6NO1m+ejC4ev3+3CL0uIAy7xorACp1mEOdDq8740Rm+KlATM1Sc7ZQ3MeqeRt4O
 7cYGE39/ttj6uSJue/JhAE5of4ahDgxaps2hbC4CGOdXTBLt0I5b2m9zlW7Y/wUMcwRM
 CKumpnCTxX+R2m3tIGG+Kc4MncXcm2KfRB66iumh4vvbbc51XwcZQfEKOAaVsSQiCWNy
 JHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o0zfkIFt+6JH2qCeaVwPptBUW8DYTI9b55PprZaXkM8=;
 b=UoW30qY0dZNDmdeD8QMKD4KyZ1iN4jhS9idvas2ttHlXrTby6u3x7UWGXlSeah0dtq
 nW+1zVUfCGNUZL8n0ETe0EvR5BagxOjsq/bCTaUiLZpph3TU9a3euHgOQkFL3DK25ve9
 liAnZorbnNuhWdmoLJ8uq29eybmFNnPjpnqmv34Uqvhl14qQGBS3bNUsMHBdf0nz0u1C
 yFiE4bPQMbZecuO89stQpfD7b2f+5Wp2K/Ss4B33UBE58TAI03sIQnlOEpcC1Xgcyhau
 7fiRN1Kh17+o5RXsxkTllUggYaz/5kzrI9DiEbfQAs74cpXJywKOGOK357I8VRO3cr25
 3wdA==
X-Gm-Message-State: APjAAAWv49sPkQ2vZdT25QhXtOvLBIGZU+ggeg9dinqBCoLRoHcUzHf9
 rC0XqqSuJ9JidZvIRmybu3s=
X-Google-Smtp-Source: APXvYqyrNSY9uu6qIRB6tCHKaxkbamRoI3EYz9mMxQODHddaqnRle1Efzwc3BX/1sry+PskKxKx5MA==
X-Received: by 2002:a17:902:4401:: with SMTP id
 k1mr5853733pld.193.1565141634169; 
 Tue, 06 Aug 2019 18:33:54 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:53 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 06/41] x86/kvm: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:05 -0700
Message-Id: <20190807013340.9706-7-jhubbard@nvidia.com>
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
Lm9yZz4KQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+CkNjOiBSYWRpbSBL
csSNbcOhxZkgPHJrcmNtYXJAcmVkaGF0LmNvbT4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBs
aW51dHJvbml4LmRlPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+CkNjOiBILiBQ
ZXRlciBBbnZpbiA8aHBhQHp5dG9yLmNvbT4KQ2M6IHg4NkBrZXJuZWwub3JnCkNjOiBrdm1Admdl
ci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlh
LmNvbT4KLS0tCiBhcmNoL3g4Ni9rdm0vc3ZtLmMgIHwgNCArKy0tCiB2aXJ0L2t2bS9rdm1fbWFp
bi5jIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rdm0vc3ZtLmMgYi9hcmNoL3g4Ni9rdm0vc3Zt
LmMKaW5kZXggN2VhZmM2OTA3ODYxLi5mZjkzYzkyM2VkMzYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2
L2t2bS9zdm0uYworKysgYi9hcmNoL3g4Ni9rdm0vc3ZtLmMKQEAgLTE4MjcsNyArMTgyNyw3IEBA
IHN0YXRpYyBzdHJ1Y3QgcGFnZSAqKnNldl9waW5fbWVtb3J5KHN0cnVjdCBrdm0gKmt2bSwgdW5z
aWduZWQgbG9uZyB1YWRkciwKIAogZXJyOgogCWlmIChucGlubmVkID4gMCkKLQkJcmVsZWFzZV9w
YWdlcyhwYWdlcywgbnBpbm5lZCk7CisJCXB1dF91c2VyX3BhZ2VzKHBhZ2VzLCBucGlubmVkKTsK
IAogCWt2ZnJlZShwYWdlcyk7CiAJcmV0dXJuIE5VTEw7CkBAIC0xODM4LDcgKzE4MzgsNyBAQCBz
dGF0aWMgdm9pZCBzZXZfdW5waW5fbWVtb3J5KHN0cnVjdCBrdm0gKmt2bSwgc3RydWN0IHBhZ2Ug
KipwYWdlcywKIHsKIAlzdHJ1Y3Qga3ZtX3Nldl9pbmZvICpzZXYgPSAmdG9fa3ZtX3N2bShrdm0p
LT5zZXZfaW5mbzsKIAotCXJlbGVhc2VfcGFnZXMocGFnZXMsIG5wYWdlcyk7CisJcHV0X3VzZXJf
cGFnZXMocGFnZXMsIG5wYWdlcyk7CiAJa3ZmcmVlKHBhZ2VzKTsKIAlzZXYtPnBhZ2VzX2xvY2tl
ZCAtPSBucGFnZXM7CiB9CmRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1fbWFpbi5jIGIvdmlydC9r
dm0va3ZtX21haW4uYwppbmRleCA4ODdmM2IwYzJiNjAuLjRiNmE1OTZlYThlOSAxMDA2NDQKLS0t
IGEvdmlydC9rdm0va3ZtX21haW4uYworKysgYi92aXJ0L2t2bS9rdm1fbWFpbi5jCkBAIC0xNDk5
LDcgKzE0OTksNyBAQCBzdGF0aWMgaW50IGh2YV90b19wZm5fc2xvdyh1bnNpZ25lZCBsb25nIGFk
ZHIsIGJvb2wgKmFzeW5jLCBib29sIHdyaXRlX2ZhdWx0LAogCiAJCWlmIChfX2dldF91c2VyX3Bh
Z2VzX2Zhc3QoYWRkciwgMSwgMSwgJndwYWdlKSA9PSAxKSB7CiAJCQkqd3JpdGFibGUgPSB0cnVl
OwotCQkJcHV0X3BhZ2UocGFnZSk7CisJCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwogCQkJcGFnZSA9
IHdwYWdlOwogCQl9CiAJfQpAQCAtMTgzMSw3ICsxODMxLDcgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
a3ZtX3JlbGVhc2VfcGFnZV9jbGVhbik7CiB2b2lkIGt2bV9yZWxlYXNlX3Bmbl9jbGVhbihrdm1f
cGZuX3QgcGZuKQogewogCWlmICghaXNfZXJyb3Jfbm9zbG90X3BmbihwZm4pICYmICFrdm1faXNf
cmVzZXJ2ZWRfcGZuKHBmbikpCi0JCXB1dF9wYWdlKHBmbl90b19wYWdlKHBmbikpOworCQlwdXRf
dXNlcl9wYWdlKHBmbl90b19wYWdlKHBmbikpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoa3ZtX3Jl
bGVhc2VfcGZuX2NsZWFuKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
