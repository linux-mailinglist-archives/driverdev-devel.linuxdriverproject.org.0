Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3700320037
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 22:18:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DCB360721
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 21:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDQMN6VFJEpA for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 21:18:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A04816071C; Fri, 19 Feb 2021 21:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6482A606B8;
	Fri, 19 Feb 2021 21:17:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E28061C113E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DCB9486C3A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4PjTysEEB95W for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A776886C35
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CDC175C00E1;
 Fri, 19 Feb 2021 16:16:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Feb 2021 16:16:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8JX0di8RBdkip
 b+xevye7JObwYOqMI/S94JegcGbQPc=; b=u5WvDiKJsC/17fqA6KkTPIk0rp/lW
 DxkIZOHV7nktxt3FSXDrLZLAtxeACgeJRtS3uM6e3k1gJcEMzcqWWMwRqdF3/XTR
 1iN3zvF0eopfJK1bsDvrulFFr5TsD8ohWV/sAqHisBPkzrCAtxYx8RJlIRWwKexx
 ZCPWWaxU41m9P5StX65w0fz4g/JPDLWtvTElBnPbnoPum2xjVP7728gb8DBnYUIf
 0kKl4YC2QJuZ/JPCANc6I62uGOCx0epY0AHOMgiNma3KYcsiTySQzX6lAIKwUEZH
 ORYc3bTfdcyep+KutB3Oz7E/QAnl/hEQTZJ486/croNZr/yc5aPnqL3aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8JX0di8RBdkipb+xevye7JObwYOqMI/S94JegcGbQPc=; b=m5Jt56ZE
 h7IiEyu0tVihuB7kPctLAieity3O+R+US7HiFLBq2exkU7Pf2eZcnKbO1f60nPk3
 jHJ8Vk3rA4cDCvyKKoS4REd6xnc47k0ClBQ5kEJcLhRYL+1CHDvuf5knp9TVs4gL
 a4kAqb1oVtkopFNQs8Psjy2nj1EEAm4ZzTr1A4WWkhl0tDYgwb+oAuleaoultu2O
 DEVKpsjHKYu28PngKwUk98uNvZOdrMMS+XWDViLGVepp+TtZr+1JEqf7z7nx3ioK
 FZNYs9T/RAP7U5RlXHfXjSbERrMQ0rUTkNyUGHd9yqPs9AubEuWH01iLSPIYZINq
 QKfxLdaotvLfsA==
X-ME-Sender: <xms:xCowYIKVyOfxw_Jyv8FtZZMYNF0nmV7cx_3xMAkz_lKEMpmJGedp4w>
 <xme:xCowYIKQiL5hPHaNUrYmxu77Jr3C3PyFnPUEgYQHaaXkt9cSm7Wk2ALXXcGv8moKl
 3krRQitSPEvOAg5JA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigddugeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:xCowYIurMr1wrx5-NWCETOR7KPWqkf3gqASIqYgxZWUnsTzqXN013Q>
 <xmx:xCowYFZYuQfMvhW77f596BUlSPAooiqOrejbMaavuLpdedBqjlWKEA>
 <xmx:xCowYPak0w5jhe8JgGXGNMtTFSGc3h0R-u-SFSmxjQ3acbJU7HHCmw>
 <xmx:xCowYACPdyST3kbInVeYB5jsSTXYPMO1kOAoWsdFhZmYzsme_Oa2SQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 41E7D240057;
 Fri, 19 Feb 2021 16:16:52 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: rtl8192e: rename Reserved to reserved in
 delba_param_set union
Date: Fri, 19 Feb 2021 16:13:58 +0000
Message-Id: <20210219161400.29316-4-will+git@drnd.me>
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

This change uses lowercase for a field name to be more consistent with
the rest of the union.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index ae4f117c839b..a482cb3b081d 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -42,7 +42,7 @@ union delba_param_set {
 	u8 char_data[2];
 	u16 short_data;
 	struct {
-		u16 Reserved:11;
+		u16 reserved:11;
 		u16 Initiator:1;
 		u16 TID:4;
 	} field;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
