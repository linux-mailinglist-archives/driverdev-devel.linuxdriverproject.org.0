Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C388C5A3132
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Aug 2022 23:39:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A215740182;
	Fri, 26 Aug 2022 21:39:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A215740182
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIIHIGV11MPE; Fri, 26 Aug 2022 21:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7385E40189;
	Fri, 26 Aug 2022 21:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7385E40189
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7F6A1BF860
 for <devel@linuxdriverproject.org>; Fri, 26 Aug 2022 21:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B343260888
 for <devel@linuxdriverproject.org>; Fri, 26 Aug 2022 21:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B343260888
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4sdcfkVXkuZp for <devel@linuxdriverproject.org>;
 Fri, 26 Aug 2022 21:39:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 176D560674
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 176D560674
 for <devel@driverdev.osuosl.org>; Fri, 26 Aug 2022 21:39:14 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id 76so2731471pfy.3
 for <devel@driverdev.osuosl.org>; Fri, 26 Aug 2022 14:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=importance:content-language:thread-index:content-transfer-encoding
 :mime-version:message-id:date:subject:in-reply-to:references:to:from
 :x-gm-message-state:from:to:cc;
 bh=y16loy9z/iu3NyW0mqsiaik3i2mGldi96Ak+e5i+TrE=;
 b=0FLxKRNhJcaweEXdUcpORMgtVbjS/RiRfiA5gF3I3USEc4nKHzBtYIUwfQz8XgrFY0
 lV/5pxw7LLUYihmk0kh4BIEZvPLS5RkOuO5F/kXGx6zfyNl8b98DAolPmF1PbEavyvQY
 fzJZrlp9PFtrgA4DDW5M5MFrFurIbRjtBYhwQJkB0IxRf/ls0emMfASL5KiGA3Kq6mLw
 WIBTiOBbOo8pm+8HuPprBbth8RJhK9wdUI2G4R1vCbGlKjnmCctlskoqWrEhYlfCwJZN
 ZFUbTg1B526P7PTH2nqsfCpxfodNT5lYT71t6Kv/Tk4muZNdjElgPQ9CsbPiW9G81yzL
 6tvA==
X-Gm-Message-State: ACgBeo3PBQuxi5xyTywn/DToWyRT593KsURZ4VDAv5nSg+dNUxAWR0uN
 uB7uteThlF0YOjgqQZHZFR0Uzg==
X-Google-Smtp-Source: AA6agR7z+p6oGcBjo1hkL2OUtnOgOBKvCgsN6O6EkzgPwmW2DPsaTR4dryqFKhUKdCxqHmjnibrEgw==
X-Received: by 2002:a63:2a44:0:b0:41d:9296:406 with SMTP id
 q65-20020a632a44000000b0041d92960406mr4771724pgq.190.1661549954446; 
 Fri, 26 Aug 2022 14:39:14 -0700 (PDT)
Received: from DESKTOPR3SMN2M ([49.207.217.249])
 by smtp.gmail.com with ESMTPSA id
 g20-20020a17090a7d1400b001fd674057d2sm1714317pjl.48.2022.08.26.14.38.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Aug 2022 14:39:13 -0700 (PDT)
From: "Hannah Roger" <hannah@globaleventdata.com>
To: <hannah@globaleventdata.com>
References: 
In-Reply-To: 
Subject: Re: IMTS Attendees Email List-2022
Date: Fri, 26 Aug 2022 16:38:15 -0500
Message-ID: <92a301d8b994$48ee1310$daca3930$@globaleventdata.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Thread-Index: Adi5kdGe+M9UxIBfQrmcE1dpbbU3VgAARdYgAAAhvNAAAAApoA==
Content-Language: en-us
Importance: High
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globaleventdata.com; s=google;
 h=importance:content-language:thread-index:content-transfer-encoding
 :mime-version:message-id:date:subject:in-reply-to:references:to:from
 :from:to:cc;
 bh=y16loy9z/iu3NyW0mqsiaik3i2mGldi96Ak+e5i+TrE=;
 b=eNl3qW9mg9BYMWg73LQoKQoMeeqJRSfw8hzSezYU8EdciUIdxEgJvjVcZGxtdSXdqS
 gZ89IHBMQgLV6E/7t8eAq+Dehq5GgxQ+t6U8AJfTbo0Higqe0KrowTRIfPth9rWlVS7g
 sModM7xwe2Ujdoim97NEo/2PZRH5mZgC/GM8A6Df39C3R4ocOJL4zVrXX7DV/S4fFaXu
 7zkcrNFBH3atek02phyiGhYqwdMQAvMx8uMlQMyHeV3n8CSIl43Z86A7TqEk8jIKN0if
 l0mC/YeyCmFSNT+l8Jn/wNUHtrf3YX49CDm4Jz/kNlpVkGFAzKfbrHLAwmlKF/DwJhOB
 THwg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=globaleventdata.com
 header.i=@globaleventdata.com header.a=rsa-sha256 header.s=google
 header.b=eNl3qW9m
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I hope you're doing great and staying healthy!

Would you be interested in acquiring IMTS Attendees Data List 2022?

List contains:=A0Company Name, Contact Name, First Name, Middle Name, Last
Name, Title, Address, Street, City, Zip code, State, Country, Telephone,
Email address and more,

No of Contacts:- 16,028
Cost: $ 1,684

Looking forward for your response,

Kind Regards,
Hannah Roger
Marketing Coordinator

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
