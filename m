Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3D6320034
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 22:17:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 652CF8752B;
	Fri, 19 Feb 2021 21:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12Au5hSLZk+9; Fri, 19 Feb 2021 21:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EEA0A8751D;
	Fri, 19 Feb 2021 21:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0B81BF32E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FD1F60717
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G2l_aWjPKRBC for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 21:17:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D159160709; Fri, 19 Feb 2021 21:17:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFDEB60709
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 21:16:55 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 307185C0087;
 Fri, 19 Feb 2021 16:16:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Feb 2021 16:16:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=cdR31n/gqzLbV
 7REyN+1oqBW0lgMVCsey8PDESAk5gE=; b=LtBWoOkgXt3ZAFp9b3USSkWCpF9PW
 s8TyLne9eLvEPWZ22jcZZMtBfTRmvGxxvFSs2RAzlkPzMmPiAOxpeISFtKC50tNt
 a/lSKl9um6rlTjH4FHrDSScDmQffWyc8dHUk/0w4T9CvL7C1+1fJ7S0y1oiIjDev
 PZFKsy+SzmDhXmTYtIrlM2RSr41M8DzU7yoKQVf2WQCzXPXl5iSUNPXidyE2KmJa
 vm2KuuOxCRdDfZKeH/RiNx3rlmTvU1OKXCsUJcDBm0b2/4OLgELvlp7qFXiTQrD2
 hngtRTam67uDX/59h4TcvhzNw1XksVi32WDuTvJEmgIxAulzsz3tNi+Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=cdR31n/gqzLbV7REyN+1oqBW0lgMVCsey8PDESAk5gE=; b=OX0AsxVY
 0YTKc7Ft1RGos2SN/+I1is3MgOSSPawpvCh4qQV/3o0KE8GyGeJ+6e0q7dpIXfDB
 CZVNARrKVS0kpph9LGOlxttdEgWcldq3Oa5Ocl+dYKxcpCwmjUg8PTjCtvrRu9/Y
 vOmCOivI/gundnfu8XmUkdHNU25gPLNAj4aANKAMf4tqsyRfIlXe2KIK3W/5OoBC
 eFVlCRmpEW09guwr25QodZEqj61I3OD3CcyLWkiGajm45KUzBiF0LzLlQr+dDClM
 eGLaCItFhMIdnqxxj4Bcg0nhGRESOd2Xuun6JB6Jdt8NZNS0HmhZNqRq0x2zKmCg
 sr1ei7sJHJW9sw==
X-ME-Sender: <xms:xCowYL2Vjh11YHXESKZeCFbIszN3n1d98NAiQzKI_OU3lcDiZw2S8Q>
 <xme:xCowYKGrb-jkIBNABIBeg3oC2q8uuTucAljiz5ejn9T16AkyiCEzNpkcZH94yDO2b
 T7nYW8B5cqaHiAsTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigddugeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:xCowYL4RixljO-47NbLi5w2hPbtaDdRaFy74AT0ocGLPyu8kdN5KWQ>
 <xmx:xCowYA2uMjbyzALSBeWM1Bp7JobbVa4tn7dxJ2LtcvQYdmXTd_R78A>
 <xmx:xCowYOGNM5JJO4d_h0aem_PN183IRyReRW0DwClN0EuZu9ouFupdYw>
 <xmx:xCowYJNotWXEF4xgWpj8i5mmUV353W5mOie1pT4hL0QIvQffbHssZA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 98EC0240057;
 Fri, 19 Feb 2021 16:16:51 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: rtl8192e: rename shortData to short_data in
 delba_param_set union
Date: Fri, 19 Feb 2021 16:13:57 +0000
Message-Id: <20210219161400.29316-3-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219161400.29316-1-will+git@drnd.me>
References: <20210219161400.29316-1-will+git@drnd.me>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes a checkpatch CHECK message.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index de41d2182ff5..ae4f117c839b 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -40,7 +40,7 @@ union ba_param_set {

 union delba_param_set {
 	u8 char_data[2];
-	u16 shortData;
+	u16 short_data;
 	struct {
 		u16 Reserved:11;
 		u16 Initiator:1;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 1f697e87ae8d..46028f74776a 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -163,7 +163,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	*tag++ = ACT_DELBA;


-	put_unaligned_le16(DelbaParamSet.shortData, tag);
+	put_unaligned_le16(DelbaParamSet.short_data, tag);
 	tag += 2;

 	put_unaligned_le16(ReasonCode, tag);
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
