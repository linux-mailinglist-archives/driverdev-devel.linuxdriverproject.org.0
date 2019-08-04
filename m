Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0580DB2
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68C278757C;
	Sun,  4 Aug 2019 22:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjTd5nQt7DyP; Sun,  4 Aug 2019 22:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAE1387526;
	Sun,  4 Aug 2019 22:51:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65BB51BF868
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A142850E0
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fqf-uoaqA53y for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B328F84516
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:02 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t16so38568736pfe.11
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GAYBkmVoEF3i3+udFKn42Z4HyLG0jAAiACtL32v96bk=;
 b=AhiTy6BwwPX512pCtOjXzDhtmzbgOoiJS/+TVyOQOpgZBJJ3KH2MvMlT06wgQ0OyIE
 yRj5vh0m/7nueGoCFtjCaur9BEfURX9GzhTYKWy0B3aTXsLWtG8nWNwdvuLJmmVnPrhP
 95nQuVNILOT8/qwgmNMhZUxktGIeWYoKF4s7BnIeiizbkSEamO5uEElN38AxJ2A5eBFh
 hUZ0Kt1okRjv7luJmtlo0FzBe+9ghVWNnXfTbLZh+WnsUeeUMycJgCWu3dSBNK1w3TM4
 /0kY40aJkh8f8jXxTbX8I9Uw2iPPUnqs4M2MJ05zm7QPLg8alWzs50lrMgIbZfArqyLV
 LbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GAYBkmVoEF3i3+udFKn42Z4HyLG0jAAiACtL32v96bk=;
 b=lzL2bErYyxfrl0kFuf5bUfLB6t3pouSaQde2KQng5xdqUCGE8xqw+UxfLct9Li7qie
 IlzYUymN3U7pItKBLO2vwO/TmlHBTSnMMahyQKWU6eviAJ2wqmVsi3hCNMhtISzLn62A
 xq1O7r38QskI+SwIZRtlhnud5pr0rPN8osxabFLg9BgYQtPamntBxe3vo5euFQcaIyoa
 cIR6yLJDPvyxBbFKGgH8xnZIKkauinh/tJ0r44DKTQFbr7TrGyCn9bKXJV9qe0SIs1qW
 +WYO6FtpBaWsEzjEhsgwVu9hydRoXS1m4kDHs9ivnqfyXaX71UkoGaY6K9HFa4TdGP3J
 tswg==
X-Gm-Message-State: APjAAAU9r0Ba+uLWGtSU9eF205p2LYHIXK28s4XFAnaOmyzemaOZ0poq
 urx3/vsTbsq224pZXGKtIPA=
X-Google-Smtp-Source: APXvYqxnFD3/8kVar2adJXY1j7ibwpw3u4EZRA3KMnmY1X8dVMpcbjzWPVU1wzddWPe9+8PMCheF4A==
X-Received: by 2002:a63:8dc9:: with SMTP id
 z192mr78564615pgd.151.1564959002300; 
 Sun, 04 Aug 2019 15:50:02 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:01 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 27/34] mm/memory.c: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:08 -0700
Message-Id: <20190804224915.28669-28-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Huang Ying <ying.huang@intel.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Rik van Riel <riel@surriel.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Will Deacon <will.deacon@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Souptick Joarder <jrdr.linux@gmail.com>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogQW5lZXNo
IEt1bWFyIEsuViA8YW5lZXNoLmt1bWFyQGxpbnV4LmlibS5jb20+CkNjOiBIdWFuZyBZaW5nIDx5
aW5nLmh1YW5nQGludGVsLmNvbT4KQ2M6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQu
Y29tPgpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBNaWNoYWwg
SG9ja28gPG1ob2Nrb0BzdXNlLmNvbT4KQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFk
ZWFkLm9yZz4KQ2M6IFJpayB2YW4gUmllbCA8cmllbEBzdXJyaWVsLmNvbT4KQ2M6IFNvdXB0aWNr
IEpvYXJkZXIgPGpyZHIubGludXhAZ21haWwuY29tPgpDYzogV2lsbCBEZWFjb24gPHdpbGwuZGVh
Y29uQGFybS5jb20+ClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlh
LmNvbT4KLS0tCiBtbS9tZW1vcnkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21tL21lbW9yeS5jIGIvbW0vbWVtb3J5
LmMKaW5kZXggZTJiYjUxYjYyNDJlLi44ODcwOTY4NDk2ZWEgMTAwNjQ0Ci0tLSBhL21tL21lbW9y
eS5jCisrKyBiL21tL21lbW9yeS5jCkBAIC00MzM3LDcgKzQzMzcsNyBAQCBpbnQgX19hY2Nlc3Nf
cmVtb3RlX3ZtKHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSwK
IAkJCQkJCSAgICBidWYsIG1hZGRyICsgb2Zmc2V0LCBieXRlcyk7CiAJCQl9CiAJCQlrdW5tYXAo
cGFnZSk7Ci0JCQlwdXRfcGFnZShwYWdlKTsKKwkJCXB1dF91c2VyX3BhZ2UocGFnZSk7CiAJCX0K
IAkJbGVuIC09IGJ5dGVzOwogCQlidWYgKz0gYnl0ZXM7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
