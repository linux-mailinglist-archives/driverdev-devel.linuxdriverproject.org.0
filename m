Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 524EC8D1A7B
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2024 13:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02BD340636;
	Tue, 28 May 2024 11:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VecJexkrpDLj; Tue, 28 May 2024 11:59:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D500340637
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D500340637;
	Tue, 28 May 2024 11:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29F5E1D2173
 for <devel@linuxdriverproject.org>; Tue, 28 May 2024 11:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16EA340636
 for <devel@linuxdriverproject.org>; Tue, 28 May 2024 11:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SBVP8i-Up0F for <devel@linuxdriverproject.org>;
 Tue, 28 May 2024 11:59:16 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 28 May 2024 11:59:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB6B34062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB6B34062E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=31.192.235.199;
 helo=mgn.giabatg.org; envelope-from=info@giabatg.org; receiver=<UNKNOWN> 
Received: from mgn.giabatg.org (mgn.giabatg.org [31.192.235.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB6B34062E
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2024 11:59:15 +0000 (UTC)
From: Luke Moktar <info@giabatg.org>
To: devel@driverdev.osuosl.org
Subject: PUCHASE ORDER 2024
Date: 28 May 2024 07:49:11 -0400
Message-ID: <20240528074911.6FABE053A8870FF5@giabatg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=mgn1;
 d=giabatg.org; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=info@giabatg.org;
 bh=EZYdlICnAdsNNLeJsysOTfIY5Qbbxhmk9+efvSgBH0s=;
 b=mdwHUtNvgQnax3mOn4nXvIBgLHQ66ebKRDllT3bFLBIy84V4Q/c2pNhHvaRXBVL0WanDOLnaFdTM
 IdR2slaGd5/vAvL8Hg5gs+dUPIDu9yU6EvqGVvEVgNDXT8JUEgDHZIo8orEM0fWzRp0cbcXxUl0z
 4Em9LdhnaC2D78UMvQR/BG1Cj6bixlS5/NQqoMrs4vKjDELis2wiareemRv7ar4w0OJIxbqvaQnB
 p3/yagWTj6K/z5zGFxCERDM2cdkNEWxEFqj3qteq5LsVQ8+Ks9HQn6h365FMmpfuaKD85Z9FNQC6
 gOSAzHFwNsDjbXFYVcJiyembcSMScqmay+Oo4w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=giabatg.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=giabatg.org header.i=info@giabatg.org
 header.a=rsa-sha256 header.s=mgn1 header.b=mdwHUtNv
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
Reply-To: export.mokter@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings Sir/Madam,


We are interested in buying your product/items after visiting 
your website. Please kindly send us your latest catalogue and 
advice on product details so we can order from your company,

hence we will send you our purchase order within the working 
day's.

Waiting for your response

 

Best Regards,
Mr. Luke Moktar

DIRECTOR

whatsapp/Tel +12097294426

Email: export.mokter@gmail.com

Export Deals LTD
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
