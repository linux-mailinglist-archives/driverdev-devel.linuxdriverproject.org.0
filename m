Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A5296B874
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2024 12:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8804140189;
	Wed,  4 Sep 2024 10:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vzr7FSRQ8raO; Wed,  4 Sep 2024 10:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 903814018A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 903814018A;
	Wed,  4 Sep 2024 10:26:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E5A21BF48B
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 10:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B03340189
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2024 10:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dPBQGMbo7TuE for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2024 10:26:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.203.238.61;
 helo=mail.inp.uz; envelope-from=qudiratov@inp.uz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4843F40179
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4843F40179
Received: from mail.inp.uz (inp.uz [185.203.238.61])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4843F40179
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2024 10:26:47 +0000 (UTC)
Received: from server.inp.uz (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTP id 3873F1510A3E
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2024 14:21:02 +0500 (+05)
X-Virus-Scanned: Debian amavisd-new at server.inp.uz
Received: from mail.inp.uz ([127.0.0.1])
 by server.inp.uz (server.inp.uz [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IlSn-suq3Hzj for <devel@driverdev.osuosl.org>;
 Wed,  4 Sep 2024 14:21:01 +0500 (+05)
Received: from _ (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTPSA id 1FAB1150F9A8;
 Wed,  4 Sep 2024 08:48:10 +0500 (+05)
MIME-Version: 1.0
Date: Wed, 04 Sep 2024 06:48:09 +0300
From: Rowell <qudiratov@inp.uz>
To: undisclosed-recipients:;
Mail-Reply-To: georgemik292@gmail.com
Message-ID: <e6234cb4eb144935c95a3258f290b583@inp.uz>
X-Sender: qudiratov@inp.uz
User-Agent: INP Webmail by M.Nishonov
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=inp.uz; h=
 user-agent:message-id:reply-to:to:from:from:date:date
 :content-transfer-encoding:content-type:content-type
 :mime-version; s=dkim; t=1725441661; x=1726305662; bh=QJSCxFHt+v
 7NpbIDZnvqowDaxiDLDVDSUdXtd00JKyc=; b=g0M/asCwtlDtDhXXrNwmtDJaX5
 +LyBnyNxR4cExVMM8s7PXF9vmmt2oMZdXsAOrPYLHB3HcS3h0jhrfLDsmLhU7b/U
 UJJUByZIZPsgWNZCuiMhspfEo6A/nBeIRpeAU89hv3d6sppEf29Sd6lUWTX4CSj9
 UcSvy9ePJeakql64Y=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inp.uz
X-Mailman-Original-Authentication-Results: server.inp.uz (amavisd-new);
 dkim=pass
 reason="pass (just generated, assumed good)" header.d=inp.uz
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
Reply-To: georgemik292@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do you get my last mail
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
