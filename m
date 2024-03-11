Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7DD878775
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Mar 2024 19:36:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D77D405A3;
	Mon, 11 Mar 2024 18:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wiOS_V9KVHWz; Mon, 11 Mar 2024 18:36:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8979F405C3
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8979F405C3;
	Mon, 11 Mar 2024 18:36:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C4C1BF865
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F95E814B6
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNp7aFRO24Ph for <devel@linuxdriverproject.org>;
 Mon, 11 Mar 2024 18:36:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E00E81418
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E00E81418
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E00E81418
 for <devel@linuxdriverproject.org>; Mon, 11 Mar 2024 18:36:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 79363CE124A;
 Mon, 11 Mar 2024 18:36:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 135C2C433B1;
 Mon, 11 Mar 2024 18:36:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.7 04/14] x86/hyperv: Allow 15-bit APIC IDs for VTL
 platforms
Date: Mon, 11 Mar 2024 14:36:07 -0400
Message-ID: <20240311183618.327694-4-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240311183618.327694-1-sashal@kernel.org>
References: <20240311183618.327694-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.7.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710182202;
 bh=d3YjCGegKBiNlaqnlaRwjobA7R6W5+YKEQ2B++yBx3M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DU5+xj9a0ciaoyGi6PbqdB/IvKkrzlGFksa8r1LshjvX3P+5OnwnYbxhmDYDd9IpI
 pqnV82dYwPM+99jCLBsbo4fJ7OsKlExT6yUWc+t5kmhcGqWwzgYSYcKarAITgwE78h
 9e10cotB/TpexgnzVLoo+SWUpRfKswDDVio6mx99JZl1A0Ziq8/R4n+Cs1ahN0c85P
 HzIdJQ3HH7MN9Dv0STXcgh0f8l+UO1eI9oWW5vHCLDpTHFage1vaUyt7/KM3xx765T
 JmMi6ZJVFYhg5JdDtWF1BrnIAHlTUf1ItME7HhjZaHPfprx2zxXyR4RaK2wqZ6AoIM
 JFPtOA2y/fjnA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DU5+xj9a
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
Cc: Sasha Levin <sashal@kernel.org>, Wei Liu <wei.liu@kernel.org>,
 sthemmin@microsoft.com, haiyangz@microsoft.com, x86@kernel.org,
 mingo@redhat.com, bp@alien8.de, devel@linuxdriverproject.org,
 Saurabh Sengar <ssengar@linux.microsoft.com>, tglx@linutronix.de,
 Michael Kelley <mhklinux@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Saurabh Sengar <ssengar@linux.microsoft.com>

[ Upstream commit 0d63e4c0ebc2b5c329babde44fd61d3f08db814d ]

The current method for signaling the compatibility of a Hyper-V host
with MSIs featuring 15-bit APIC IDs relies on a synthetic cpuid leaf.
However, for higher VTLs, this leaf is not reported, due to the absence
of an IO-APIC.

As an alternative, assume that when running at a high VTL, the host
supports 15-bit APIC IDs. This assumption is safe, as Hyper-V does not
employ any architectural MSIs at higher VTLs

This unblocks startup of VTL2 environments with more than 256 CPUs.

Signed-off-by: Saurabh Sengar <ssengar@linux.microsoft.com>
Reviewed-by: Michael Kelley <mhklinux@outlook.com>
Link: https://lore.kernel.org/r/1705341460-18394-1-git-send-email-ssengar@linux.microsoft.com
Signed-off-by: Wei Liu <wei.liu@kernel.org>
Message-ID: <1705341460-18394-1-git-send-email-ssengar@linux.microsoft.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/hyperv/hv_vtl.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/x86/hyperv/hv_vtl.c b/arch/x86/hyperv/hv_vtl.c
index 96e6c51515f50..cf1b78cb2d043 100644
--- a/arch/x86/hyperv/hv_vtl.c
+++ b/arch/x86/hyperv/hv_vtl.c
@@ -16,6 +16,11 @@
 extern struct boot_params boot_params;
 static struct real_mode_header hv_vtl_real_mode_header;
 
+static bool __init hv_vtl_msi_ext_dest_id(void)
+{
+	return true;
+}
+
 void __init hv_vtl_init_platform(void)
 {
 	pr_info("Linux runs in Hyper-V Virtual Trust Level\n");
@@ -38,6 +43,8 @@ void __init hv_vtl_init_platform(void)
 	x86_platform.legacy.warm_reset = 0;
 	x86_platform.legacy.reserve_bios_regions = 0;
 	x86_platform.legacy.devices.pnpbios = 0;
+
+	x86_init.hyper.msi_ext_dest_id = hv_vtl_msi_ext_dest_id;
 }
 
 static inline u64 hv_vtl_system_desc_base(struct ldttss_desc *desc)
-- 
2.43.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
