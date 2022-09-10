Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DFD5B473A
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Sep 2022 17:12:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33A5784175;
	Sat, 10 Sep 2022 15:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33A5784175
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HyIlU4Rg-KEl; Sat, 10 Sep 2022 15:12:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 025D18414A;
	Sat, 10 Sep 2022 15:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 025D18414A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3DF1BF357
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F26F440128
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F26F440128
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zC8yVonNlt7A for <devel@linuxdriverproject.org>;
 Sat, 10 Sep 2022 15:12:27 +0000 (UTC)
X-Greylist: delayed 00:55:45 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C49674010C
Received: from wrqvvdbz.outbound-mail.sendgrid.net
 (wrqvvdbz.outbound-mail.sendgrid.net [149.72.141.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C49674010C
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 15:12:26 +0000 (UTC)
Received: by filterdrecv-64cb6d8996-8b4k8 with SMTP id
 filterdrecv-64cb6d8996-8b4k8-1-631CA496-E
 2022-09-10 14:52:06.277016124 +0000 UTC m=+1356071.694669625
Received: from APP-30106.karmakxcelerate.com (unknown)
 by geopod-ismtpd-1-0 (SG) with ESMTP id lQF6SQAqSiiOK40sWqA_0g
 for <devel@linuxdriverproject.org>; Sat, 10 Sep 2022 14:52:06.144 +0000 (UTC)
Received: from [195.178.120.195] ([195.178.120.195]) by
 APP-30106.karmakxcelerate.com with Microsoft SMTPSVC(10.0.17763.1697); 
 Sat, 10 Sep 2022 10:52:05 -0400
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 20.10.199.124
From: "Mrs. cititiclster" <ctng@noreply.com>
Date: Sat, 10 Sep 2022 14:52:06 +0000 (UTC)
Message-ID: <APP-30106md6wUZLEZF0000ed4f@APP-30106.karmakxcelerate.com>
X-OriginalArrivalTime: 10 Sep 2022 14:52:06.0013 (UTC)
 FILETIME=[E512AAD0:01D8C524]
X-SG-EID: =?us-ascii?Q?+cDjL7XE=2FxKOF0BB68KHf2O0CeC1gC021tnKTxW+K0TaUf1G2tNG7yIV+N1e6Q?=
 =?us-ascii?Q?YEvgwUttvabR3pVxUCZuBRTelzZsXUc8NpLuuz2?=
 =?us-ascii?Q?bH6u+fbQj5122nn6Z+PU9+6kfhxD7FVKUaYlNQs?=
 =?us-ascii?Q?1zsZf6V5XSSzlhdokTKb+wT04y+obd5Rjyt5LiX?=
 =?us-ascii?Q?ulEqDWu7Py0ocFhWtbKbqCUZEMcKROSxLIjnay+?=
 =?us-ascii?Q?hMATeVBqbuagxu+29Xxty71JlreGuSCxeRN08V3?=
 =?us-ascii?Q?nTR1oDVfE3+KkeJ59sG9w=3D=3D?=
To: Recipients <ctng@noreply.com>
X-Entity-ID: eN8NfSccfPSNVgM/qSDjvw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sendgrid.net; 
 h=content-type:mime-version:content-transfer-encoding:
 content-description:subject:from:reply-to:to:cc;
 s=smtpapi; bh=VK6/zVUQpZ16f88Dbt1i8v7bw9lncXVkjBStHqHP0EA=;
 b=wr3VN1qMA55Toa7/4UopDXeWWNimQvEeBUU6kAaimDMMrEp1g6q0d7mZw+qZb2L7KIXM
 NiTPDM1LkLe8nQ+1zY/ans8FJ/ON34pqOiAztR8f90MyiF2tRSrqv/t+7aF5eyNHFwFcMY
 iqvCV02OD0bJXu4NUReN15rfeXnCF6C74=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=sendgrid.net header.i=@sendgrid.net
 header.a=rsa-sha256 header.s=smtpapi header.b=wr3VN1qM
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
Reply-To: vcgundotrasvp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am a citizen of Lebanon,MENA Cluster HEAD & CEO CITI Groups UAE.

I have a business proposal that will beneficial to both of us which I
wish to discuss with you. kindly get back to me your full name for more details.

Regards,
Elissar Farah .A.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
