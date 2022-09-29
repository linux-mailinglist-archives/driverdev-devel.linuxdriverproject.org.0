Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D905EFDDF
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Sep 2022 21:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C44240BAA;
	Thu, 29 Sep 2022 19:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C44240BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwD8LQYu1Xl2; Thu, 29 Sep 2022 19:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D815F40236;
	Thu, 29 Sep 2022 19:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D815F40236
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8D91BF381
 for <devel@linuxdriverproject.org>; Thu, 29 Sep 2022 19:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF78A611B1
 for <devel@linuxdriverproject.org>; Thu, 29 Sep 2022 19:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF78A611B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jRxqJ7-Vwqg for <devel@linuxdriverproject.org>;
 Thu, 29 Sep 2022 19:23:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58232611A9
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58232611A9
 for <devel@driverdev.osuosl.org>; Thu, 29 Sep 2022 19:23:21 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id d82so2281143pfd.10
 for <devel@driverdev.osuosl.org>; Thu, 29 Sep 2022 12:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-language:thread-index:importance:content-transfer-encoding
 :mime-version:message-id:date:subject:in-reply-to:references:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=gBxhmU6An3MADswK/ouLzgeluR+hPTyQpjp/m7Ctir4=;
 b=E8ZLPhzxSzWnnPKTcdjo4dr8y9a/v8aTbUxvTO+MUUmQnhDUnIAuuIZBVqRdtIB7pl
 EF9UNOLprJtEeJAzXAhtgmej3g3W5toz9boyH1IEpcXoQ/BvMsGOJ+NjiMFqFJzCOxgj
 vGSEIlPD2b80au4CstlEcipzyb2amPYA5yxCM6MeXo71sE/Mb0tJX2Adk9D8mF/xA/qw
 v5epjRfpL9QF3J1Mz9qvsJBtQme1Em1KBC2WBDPo9+FrNGooM5v9mX0A1P3TbCbQ3wE2
 ZPsvDYvtbWYp1ZvbgfgIN4Q7P0DIIP0ijTFF5drkH5oGdPSP0UyCrvohBX1QtND3NwHj
 FRLQ==
X-Gm-Message-State: ACrzQf0EPT7wnRUDeO9P8OGZk/GnxfdU8Zgr3Txgq85euSMagN2mxOK4
 oIKaXNx2bEF65fYvdHXPmUxUzg==
X-Google-Smtp-Source: AMsMyM6OYBNeE+hqmwczKriE+J/RHGyvP9civSZRdhLszJr6vN060YMPp+o67NcuHJo72kuf68OIZw==
X-Received: by 2002:a63:f20e:0:b0:439:398f:80f8 with SMTP id
 v14-20020a63f20e000000b00439398f80f8mr4139663pgh.494.1664479400695; 
 Thu, 29 Sep 2022 12:23:20 -0700 (PDT)
Received: from DESKTOPR3SMN2M ([2401:4900:3315:84c1:6d58:d775:7818:de6c])
 by smtp.gmail.com with ESMTPSA id
 l4-20020a170902f68400b0017824e7065fsm235263plg.180.2022.09.29.12.22.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Sep 2022 12:23:19 -0700 (PDT)
From: "Sarah Jones" <sarah@firstdatasolution.com>
To: "'Sarah Jones'" <sarah@firstdatasolution.com>
References: 
In-Reply-To: 
Subject: RE: Mobile World Congress Attendees Email List-2022
Date: Thu, 29 Sep 2022 14:22:30 -0500
Message-ID: <37eb01d8d438$ee859aa0$cb90cfe0$@firstdatasolution.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Importance: High
Thread-Index: AdjUNnsoVonWGR2QSfKm4pKdalLl1QAAbcIgAAAAUHAAAAApkAAAAISwAAAAJZAAAAAsgA==
Content-Language: en-us
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=firstdatasolution.com; s=google;
 h=content-language:thread-index:importance:content-transfer-encoding
 :mime-version:message-id:date:subject:in-reply-to:references:to:from
 :from:to:cc:subject:date;
 bh=gBxhmU6An3MADswK/ouLzgeluR+hPTyQpjp/m7Ctir4=;
 b=cibdfQsW1q+S5OxbX6RaZeooGlYh3WMBwK7C/eQoPuz95Y2r9xPfns61X5QZK6GF6y
 B+mK0kFUiHV1CHbhe9M7MoIpkM77su2BH7kzBXDbipit+uzLC5+ParMA2MJqT/oY/EJj
 hUsXZutHjmc8XIeGoH6dJqrRsl3Q6JjG7q9CQSncsY00ekZUBwe/gw1/lFfm9FuE9vh7
 xN5fhpYn82SkEUPbqE8j1zpIeI+0uaEhi528+ifazxkBt5IcnesrymGID7nGgvzEx/Wu
 VoHL2FAg18ZiIVG96Vbk15wpaHbI5wGb6xgT6iDTd5nPZICDeBnEsvz/QaM5EtqfEBA7
 t1Ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=firstdatasolution.com
 header.i=@firstdatasolution.com header.a=rsa-sha256 header.s=google
 header.b=cibdfQsW
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

Dear MWC Exhibitors,

Mobile World Congress Americas - complete attendees list is available now.

List Includes :- Org-Name, First Name, Last Name, Contact Job Title,
Verified Email Address, Website URL, Mailing Address, Phone Number, Fax
Number, Industry and many more.

Number of Contacts :- 30,586 Verified Contacts
Cost :- $1,879

List will be provided for unlimited usage.

Interested? Email me Back, I would love to provide more information on the
list.

Kind Regards,
Sarah Jones 
Marketing Coordinator

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
