Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E3183F59
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C85AF81425;
	Wed,  7 Aug 2019 01:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+ttlZzK+3P4; Wed,  7 Aug 2019 01:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A204B815ED;
	Wed,  7 Aug 2019 01:34:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E87841BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E013786A40
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jt32DJKQns52 for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8141981425
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:50 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z14so5311574pga.5
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iyBF/TunLLNE9m64WGZW5xnvl+XVp1Tkb/4cWK4Q28U=;
 b=eabm6eV7x6nJ3H6jB3OWHKTAjJ5hccshhWRSvyF8YaL4Xb3kcN3FPSj+mrT7hdf1FM
 0MWhm5PqlQFyy6zw76EwLtyOlQEQTOAPUCRq2cKY8d4yFrfincU70ZRfebLbmlijIWR2
 wTENuQ2R1ycfB8EIZdvDLYgUy7fahn8NbpOFjvcP7wPItsW4fy1klzu0bIomS6ZhLV9L
 FATmBTkmPO3bz1bBRYsOrrqOVmLfRrGMChgnyEYGXYwKFOo3GWkjWYe147H72f0kIcVc
 Tr73f17ZMCrLU+eCYt8HTv90LoBSVz+pg0lUMLNh1TQmkPNzI1sbpCYBSoNZ3shE6svq
 cn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iyBF/TunLLNE9m64WGZW5xnvl+XVp1Tkb/4cWK4Q28U=;
 b=KaJRG7/orW5BgzI8O8+6bXd9wEfAewJo4eDJuK+KlrWL9InNrxDBCF188asbAMQSq2
 SUH2O1MKQDnHcu7T9w6pUhmkmeVjy5h6gJ7HHeBwsnng5zRvXlbmnibV3BHD0NfrcPyt
 J5fGJtDJXcSyRAyUYVxmpqPe7D0KiTjmzst/ucyPRq2RObFau+EKB+nYoeFOc6ln2knn
 p7Guf9z0F2hGABzU55T4mumdBkURwd/Kw1vB/eEG8N97FnGvC3vTdvk5xxfHKcNUa6BN
 q0Ae2uWhrR5Z5UgCfpOkrY0fZHIFXVCe44KgjbvRIlfMdCh7eDDIrra6qQ67NqWKROQU
 1sTw==
X-Gm-Message-State: APjAAAXueajyO5jsotNd4+C0K0Xq/BNvdpojX3sFKDGsL5fzavoKOyaw
 rKseP7VLk65OSLN0NJ2hwQM=
X-Google-Smtp-Source: APXvYqz3mrxPCB1S0CW+dxLuweNihe5G+Md2rLL8K5hOTJIrjMzyu1ZdPrsndXXUg8jjoSZHHVCyxA==
X-Received: by 2002:a62:14c4:: with SMTP id 187mr6515801pfu.241.1565141690166; 
 Tue, 06 Aug 2019 18:34:50 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:49 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 41/41] mm/ksm: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:40 -0700
Message-Id: <20190807013340.9706-42-jhubbard@nvidia.com>
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
a3NtLmMgfCAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tbS9rc20uYyBiL21tL2tzbS5jCmluZGV4
IDNkYzQzNDY0MTFlNC4uZTEwZWU0ZDVmZGQ4IDEwMDY0NAotLS0gYS9tbS9rc20uYworKysgYi9t
bS9rc20uYwpAQCAtNDU2LDcgKzQ1Niw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBrc21fdGVzdF9l
eGl0KHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKQogICogV2UgdXNlIGJyZWFrX2tzbSB0byBicmVhayBD
T1cgb24gYSBrc20gcGFnZTogaXQncyBhIHN0cmlwcGVkIGRvd24KICAqCiAgKglpZiAoZ2V0X3Vz
ZXJfcGFnZXMoYWRkciwgMSwgMSwgMSwgJnBhZ2UsIE5VTEwpID09IDEpCi0gKgkJcHV0X3BhZ2Uo
cGFnZSk7CisgKgkJcHV0X3VzZXJfcGFnZShwYWdlKTsKICAqCiAgKiBidXQgdGFraW5nIGdyZWF0
IGNhcmUgb25seSB0byB0b3VjaCBhIGtzbSBwYWdlLCBpbiBhIFZNX01FUkdFQUJMRSB2bWEsCiAg
KiBpbiBjYXNlIHRoZSBhcHBsaWNhdGlvbiBoYXMgdW5tYXBwZWQgYW5kIHJlbWFwcGVkIG1tLGFk
ZHIgbWVhbndoaWxlLgpAQCAtNDgzLDcgKzQ4Myw3IEBAIHN0YXRpYyBpbnQgYnJlYWtfa3NtKHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nIGFkZHIpCiAJCQkJCUZBVUxU
X0ZMQUdfV1JJVEUgfCBGQVVMVF9GTEFHX1JFTU9URSk7CiAJCWVsc2UKIAkJCXJldCA9IFZNX0ZB
VUxUX1dSSVRFOwotCQlwdXRfcGFnZShwYWdlKTsKKwkJcHV0X3VzZXJfcGFnZShwYWdlKTsKIAl9
IHdoaWxlICghKHJldCAmIChWTV9GQVVMVF9XUklURSB8IFZNX0ZBVUxUX1NJR0JVUyB8IFZNX0ZB
VUxUX1NJR1NFR1YgfCBWTV9GQVVMVF9PT00pKSk7CiAJLyoKIAkgKiBXZSBtdXN0IGxvb3AgYmVj
YXVzZSBoYW5kbGVfbW1fZmF1bHQoKSBtYXkgYmFjayBvdXQgaWYgdGhlcmUncwpAQCAtNTY4LDcg
KzU2OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqZ2V0X21lcmdlYWJsZV9wYWdlKHN0cnVjdCBy
bWFwX2l0ZW0gKnJtYXBfaXRlbSkKIAkJZmx1c2hfYW5vbl9wYWdlKHZtYSwgcGFnZSwgYWRkcik7
CiAJCWZsdXNoX2RjYWNoZV9wYWdlKHBhZ2UpOwogCX0gZWxzZSB7Ci0JCXB1dF9wYWdlKHBhZ2Up
OworCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwogb3V0OgogCQlwYWdlID0gTlVMTDsKIAl9CkBAIC0x
OTc0LDEwICsxOTc0LDEwIEBAIHN0cnVjdCBybWFwX2l0ZW0gKnVuc3RhYmxlX3RyZWVfc2VhcmNo
X2luc2VydChzdHJ1Y3Qgcm1hcF9pdGVtICpybWFwX2l0ZW0sCiAKIAkJcGFyZW50ID0gKm5ldzsK
IAkJaWYgKHJldCA8IDApIHsKLQkJCXB1dF9wYWdlKHRyZWVfcGFnZSk7CisJCQlwdXRfdXNlcl9w
YWdlKHRyZWVfcGFnZSk7CiAJCQluZXcgPSAmcGFyZW50LT5yYl9sZWZ0OwogCQl9IGVsc2UgaWYg
KHJldCA+IDApIHsKLQkJCXB1dF9wYWdlKHRyZWVfcGFnZSk7CisJCQlwdXRfdXNlcl9wYWdlKHRy
ZWVfcGFnZSk7CiAJCQluZXcgPSAmcGFyZW50LT5yYl9yaWdodDsKIAkJfSBlbHNlIGlmICgha3Nt
X21lcmdlX2Fjcm9zc19ub2RlcyAmJgogCQkJICAgcGFnZV90b19uaWQodHJlZV9wYWdlKSAhPSBu
aWQpIHsKQEAgLTE5ODYsNyArMTk4Niw3IEBAIHN0cnVjdCBybWFwX2l0ZW0gKnVuc3RhYmxlX3Ry
ZWVfc2VhcmNoX2luc2VydChzdHJ1Y3Qgcm1hcF9pdGVtICpybWFwX2l0ZW0sCiAJCQkgKiBpdCB3
aWxsIGJlIGZsdXNoZWQgb3V0IGFuZCBwdXQgaW4gdGhlIHJpZ2h0IHVuc3RhYmxlCiAJCQkgKiB0
cmVlIG5leHQgdGltZTogb25seSBtZXJnZSB3aXRoIGl0IHdoZW4gYWNyb3NzX25vZGVzLgogCQkJ
ICovCi0JCQlwdXRfcGFnZSh0cmVlX3BhZ2UpOworCQkJcHV0X3VzZXJfcGFnZSh0cmVlX3BhZ2Up
OwogCQkJcmV0dXJuIE5VTEw7CiAJCX0gZWxzZSB7CiAJCQkqdHJlZV9wYWdlcCA9IHRyZWVfcGFn
ZTsKQEAgLTIzMjgsNyArMjMyOCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm1hcF9pdGVtICpzY2FuX2dl
dF9uZXh0X3JtYXBfaXRlbShzdHJ1Y3QgcGFnZSAqKnBhZ2UpCiAJCQkJCQkJJnJtYXBfaXRlbS0+
cm1hcF9saXN0OwogCQkJCQlrc21fc2Nhbi5hZGRyZXNzICs9IFBBR0VfU0laRTsKIAkJCQl9IGVs
c2UKLQkJCQkJcHV0X3BhZ2UoKnBhZ2UpOworCQkJCQlwdXRfdXNlcl9wYWdlKCpwYWdlKTsKIAkJ
CQl1cF9yZWFkKCZtbS0+bW1hcF9zZW0pOwogCQkJCXJldHVybiBybWFwX2l0ZW07CiAJCQl9Ci0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
