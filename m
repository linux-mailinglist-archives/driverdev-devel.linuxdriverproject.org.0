Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A77A4795
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 07:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2666A86D29;
	Sun,  1 Sep 2019 05:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cTmY8Smo47-K; Sun,  1 Sep 2019 05:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C265A86B0B;
	Sun,  1 Sep 2019 05:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BF5F1BF95A
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 999B220035
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 05:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pl4lRsahn8X2 for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 05:52:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-8.consmr.mail.gq1.yahoo.com
 (sonic308-8.consmr.mail.gq1.yahoo.com [98.137.68.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 1270A203EA
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 05:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567317128; bh=mTmwRZ2g3QljgC6KiLAN+Ium+nqdfr+3BykXX0EI6eU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=ZyUeUQC0NOatgpXuDLF3rpRK0jy0LMQVptNi4Q3921UQXFxNNXXTbwrVpwba2MqsR2DH4holji1R779hXFyaBdI0Pz+9VxwGvgx4p2dvupgwxIwbibAwz67xYAManSJc4zSxwENuRpCf4tUlkrR/eAVWADAhNKDh13/s2Soj8ZqBIff0aZSDv20otJCOUi6cjOLCUQM+7K3XwDzv8Eoi6IAP4Z/D9tocCHSUCHMW1hSScAqvX+Uw39lxmfN0/oAySr87Ee9TlltICNZtGHsoERpvo+lqlQtiNCBfjxlSNsgznev3pg7pwob/BcSc98cFUlgviqqS6svbu9PSDCfjSQ==
X-YMail-OSG: s56rVUIVM1mwzoUf8WsYDID12PeGeY4vZEh_RrWN6n2uXOvIz3qaIX4y0xL1yS4
 RfINvJCRlH21f3NIrnlKVDFEGqd0PlR.IEBOTdtLwxCL42cNPjfxt_qBgkM8V46Pq3L54YsSjLpE
 O35MtuwLRQzDYvvnUlZP2slwSB.68tdazJLXonhte_YNyV3sAUC9HTYt5UvHoiYbWEn4PJG1Pwp9
 Nk5OMqyO7xXvgt7M1OPmI9OCw4jS7sSsATFxSsFYyL9MGWctKZIRcxJftNg3nJiDjwTRZh8A6HOj
 qyj9v4tiwmP5rSuALFreKiUf_Od4m06aRx6BP24GCgim9PGHpBjV1FEVgajDgvDVA9MsxBH48jzm
 N8jhoTbtAj5Qsvqqt6LNRPC0ojf4nFZfAnN0u1j1OMjL.U8fpEx5q8M7Yba4YhuhnKMX_isN4K4n
 30_T26_iAdpXRMYo33FtFz3wodMNN8hKRhw0SMG_m2jmwYS6iF13ZN__y_EW9IRNTh9FSn0dj17i
 9NRmHrC0CP4i.GLOgxdhOfMyx0Y.iDWQ.c6lpIJVlTfRSlyxtuGZQ5VS6Jh0fKJnT70yiUM8kSih
 865nAsZzYojzEqn_Q2To8yNjCiZRLbiU8UEu5zSc2kyd26Acsz.jlI.C.pS1tFaHXUr4cTpV_m67
 wk0D0pwzQT.VpYDghMaM3QrwUV3yVcZxW5evmTju496rmPdLa1SPif1JxDXP8YLmSaqzABX5eAW7
 VBFKn9xLeEDB5mBT63L..rNwW_ytnMYVXT5OcmZ8V9Icfaid3DWK.cIHdjJYBd2eHQTfePlfqHja
 F3u698bNfIZLLtuHcsgdX9izTv6kKBvRxOnoHkOgmAjh2q4kqM6HgR4VImdsBbPios39.vtNaTUs
 yGKpgDQo5nZ9LuES8MMNti8MBzXI0oK44yy_l.SfQG0DPqAUT5BOjqvo4GcREbLjtqAjRRloY6xw
 24O0iADcwJTXo2lrP2SCHK8cUPl7VTtkN4qvRRa6xIVP4umNcJdkvliAIxMhILx.iAm0QlOOCyUT
 L8NvrzgBn2A6CNG70JWk0ZPt4VPf5OpaLDSKdRILQD7QhvmelUlWVxg_taI4qBy2oxqZSjxUffwe
 Ps2CQeUO_cVJDraqZqbt1E2sIky2VmfYVy2eKqr5OtQzUMuGjYKRm4lpNf5KK4OJZYq9N1H0v4.z
 Xu2N8BgWkRQGK3MQw.ucIXBV4N_gsPWoJnKjMzRpZMRX053d9zii6DlZF09YEChSsngGSd1JsZhm
 heDixjuoz2XD68iQNtjtXcoWL9usCx2_XAvZcKQs-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.gq1.yahoo.com with HTTP; Sun, 1 Sep 2019 05:52:08 +0000
Received: by smtp406.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 426e3b5ec1af9e36f409445c51071a70; 
 Sun, 01 Sep 2019 05:52:07 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 04/21] erofs: kill __packed for on-disk structures
Date: Sun,  1 Sep 2019 13:51:13 +0800
Message-Id: <20190901055130.30572-5-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190901055130.30572-1-hsiangkao@aol.com>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Chao Yu <chao@kernel.org>, linux-erofs@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gao Xiang <gaoxiang25@huawei.com>

As Christoph suggested "Please don't add __packed" [1],
remove all __packed except struct erofs_dirent here.

Note that all on-disk fields except struct erofs_dirent
(12 bytes with a 8-byte nid) in EROFS are naturally aligned.

[1] https://lore.kernel.org/r/20190829095954.GB20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/erofs_fs.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index c1220b0f26e0..59dcc2e8cb02 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -38,7 +38,7 @@ struct erofs_super_block {
 	__le32 requirements;    /* (aka. feature_incompat) */
 
 	__u8 reserved2[44];
-} __packed;
+};
 
 /*
  * erofs inode data mapping:
@@ -91,12 +91,12 @@ struct erofs_inode_v1 {
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 	__le32 i_ino;           /* only used for 32-bit stat compatibility */
 	__le16 i_uid;
 	__le16 i_gid;
 	__le32 i_reserved2;
-} __packed;
+};
 
 /* 32 bytes on-disk inode */
 #define EROFS_INODE_LAYOUT_V1   0
@@ -119,7 +119,7 @@ struct erofs_inode_v2 {
 
 		/* for device files, used to indicate old/new device # */
 		__le32 rdev;
-	} i_u __packed;
+	} i_u;
 
 	/* only used for 32-bit stat compatibility */
 	__le32 i_ino;
@@ -130,7 +130,7 @@ struct erofs_inode_v2 {
 	__le32 i_ctime_nsec;
 	__le32 i_nlink;
 	__u8   i_reserved2[16];
-} __packed;
+};
 
 #define EROFS_MAX_SHARED_XATTRS         (128)
 /* h_shared_count between 129 ... 255 are special # */
@@ -152,7 +152,7 @@ struct erofs_xattr_ibody_header {
 	__u8   h_shared_count;
 	__u8   h_reserved2[7];
 	__le32 h_shared_xattrs[0];      /* shared xattr id array */
-} __packed;
+};
 
 /* Name indexes */
 #define EROFS_XATTR_INDEX_USER              1
@@ -169,7 +169,7 @@ struct erofs_xattr_entry {
 	__le16 e_value_size;    /* size of attribute value */
 	/* followed by e_name and e_value */
 	char   e_name[0];       /* attribute name */
-} __packed;
+};
 
 static inline unsigned int erofs_xattr_ibody_size(__le16 i_xattr_icount)
 {
@@ -273,8 +273,8 @@ struct z_erofs_vle_decompressed_index {
 		 * [1] - pointing to the tail cluster
 		 */
 		__le16 delta[2];
-	} di_u __packed;
-} __packed;
+	} di_u;
+};
 
 #define Z_EROFS_VLE_LEGACY_INDEX_ALIGN(size) \
 	(round_up(size, sizeof(struct z_erofs_vle_decompressed_index)) + \
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
