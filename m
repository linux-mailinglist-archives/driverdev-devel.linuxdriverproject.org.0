Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 170D057EFD6
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jul 2022 16:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9094341685;
	Sat, 23 Jul 2022 14:53:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9094341685
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6CYPSBH77zoQ; Sat, 23 Jul 2022 14:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEBE641679;
	Sat, 23 Jul 2022 14:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEBE641679
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECDD81BF314
 for <devel@linuxdriverproject.org>; Sat, 23 Jul 2022 14:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6CA14051E
 for <devel@linuxdriverproject.org>; Sat, 23 Jul 2022 14:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6CA14051E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsqwvDJ0jUMa for <devel@linuxdriverproject.org>;
 Sat, 23 Jul 2022 14:53:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E15040496
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E15040496
 for <devel@driverdev.osuosl.org>; Sat, 23 Jul 2022 14:53:38 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id r6so8866748edd.7
 for <devel@driverdev.osuosl.org>; Sat, 23 Jul 2022 07:53:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2Qzou4MI11qEpil0rtoJPrQ+ObM6L7PzLnWdgV0qmDs=;
 b=wpisGnx9SQs2Nydn6d3/NbJXQsJ8w7c9J89KMKHPrvSibp/IpThoaadD25n3vcX0DG
 VdSzbBzLrvV/BrxCMuZBhqZaLv+FVE/cHLrZcjT8AUMct69HiHB/WgqmOwdRe+dTGp0w
 cKrWTEl1y6+L7NnV6ngYtaVJoDWurMhLf2P0ai+w9UcjVBXQnMk9+zulW9saKGqBTjzt
 D41278Oq/1Lf9jvoL6x0ErdTIRMv7K5ycIcLDv24JBueMo5lJHjoitrVzROlDUwXZWvH
 jeZhvLZywNEToZrB5hxLTc5gRJT5/XO3Fcj84aT8Ko8vlc0qYldqY8AWL33mt//sEtK4
 ZSSA==
X-Gm-Message-State: AJIora9u8Qso+Uu3AldRcsknmtspg3nZUjsL/H1chB3UZoObQKsFyGrU
 jB61v7b5AS9+H9ZkWfHygxj/6vC6LSDmUXtiADg=
X-Google-Smtp-Source: AGRyM1tBknA7G9xtbNi3x6V7iOesRdQHgAoe1AsxxBl7T6ZyJ3kDy9lMbrfgjXuqZqZSpKqWQi3CtabspsvfyEUd1Bw=
X-Received: by 2002:a05:6402:430f:b0:43a:d521:bda with SMTP id
 m15-20020a056402430f00b0043ad5210bdamr4859734edc.69.1658588016043; Sat, 23
 Jul 2022 07:53:36 -0700 (PDT)
MIME-Version: 1.0
From: Lara Paul <expodatalist1@gmail.com>
Date: Sat, 23 Jul 2022 20:23:25 +0530
Message-ID: <CAOXSathnwdsyrzqONePhgrk-aFs+HgfyauEUpJDCOMywx+_4TA@mail.gmail.com>
Subject: RE: IMTS Attendees List Report- 2022
To: Lara Paul <expodatalist1@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=2Qzou4MI11qEpil0rtoJPrQ+ObM6L7PzLnWdgV0qmDs=;
 b=NjGX3tAwKe00c6dK29rFSYwP6q3uqPe3/YkMEsZKlsAiAaLB4rrTq0QfEVBCkGxQM2
 wrFKDBMOfbAHYi/UGo7CnlmxYn59txTkn21Q+RM0ghya1P0gaULTcfTPmlpnsgmD+N1R
 Aqoec1b9Zcp31tGWU8MEezmIryUJVbpTlc6RnamOi+X9lY1g4P2GTzKkcHI10p6gt9Pq
 165+RMjCXTodh3PxzR72erMWIHKCZNLeJFGvTVhspQXWhdpTFfeDzckYwU2IiINIv2s+
 fEg6pu+Ep1JqCjygCiJg7ElqY49c3/plR0ZoeOePisWVnWM/YqS1ZRwYIdVSGxaouLo4
 +fvw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NjGX3tAw
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I hope this email finds you well.

Would you be interested in acquiring International Manufacturing
Technology Show Attendees Data List 2022?

List contains: Company Name, Contact Name, First Name, Middle Name,
Last Name, Title, Address, Street, City, Zip code, State, Country,
Telephone, Email address and more

No of Contacts: - 48,239
Cost: $1,876

Looking forward for your response,

Best Regards
Lara Paul
Marketing Coordinator
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
