Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B634E5A5A78
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Aug 2022 05:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C8596068B;
	Tue, 30 Aug 2022 03:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C8596068B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-_eaJzqT2pu; Tue, 30 Aug 2022 03:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FE2260674;
	Tue, 30 Aug 2022 03:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FE2260674
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D50F71BF398
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 03:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0044813AA
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 03:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0044813AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WlCjgMvyKeUx for <devel@linuxdriverproject.org>;
 Tue, 30 Aug 2022 03:53:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D404813A6
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D404813A6
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 03:53:20 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-11e7e0a63e2so13156632fac.4
 for <devel@driverdev.osuosl.org>; Mon, 29 Aug 2022 20:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version
 :x-gm-message-state:from:to:cc;
 bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
 b=x99y8niX5ODCKpCVhZNIBMb2J4Px0bXMkpiLZmdxuT+nv+lj6+ldBd9VBnBISO07wI
 2OTOVO544/AqWVRx8/PQEwsn/hjHygtaq30g8xPsGJcwWm0Hax7wPCYc3n/knS9w0pb9
 4FZVBGeXiLevOiy9qQCllxU9gX0FgtXikxPW99Zwfir1adJFhQ/m4yuMCmNPTuRNnLfF
 wdv0+T/K28Bm0tG1putjZ9a5iC40lFlg99izy4dLm92d7gxBaABTI+H72xiCLkNx9GTF
 wtFeDqoYhFFyqQlm1ISGGEddN+IIbvJa/fpQuv3fWsCaj0eE//+EpWDcoP75jpBmDp3e
 OwXA==
X-Gm-Message-State: ACgBeo1i4y+FVdISIPgdWvnuhn+NkyhIRLlepQ5fyVEvrkhYyuV309hk
 B8ndoF60DekgXz79uvKwVIgVHeUTW5qGunxxLQ8=
X-Google-Smtp-Source: AA6agR5y836guwWEtw4tr/PsdZTq0dDGExqg8iq9+dEz1vB2bsq+H5dgFeulh5I+q3ykeTQR5UMZbLbn7IRZZDHOXnA=
X-Received: by 2002:a05:6870:5702:b0:11e:dd17:d4b6 with SMTP id
 k2-20020a056870570200b0011edd17d4b6mr4644817oap.112.1661831599509; Mon, 29
 Aug 2022 20:53:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:e713:0:0:0:0:0 with HTTP; Mon, 29 Aug 2022 20:53:18
 -0700 (PDT)
From: Al muharraq group <al.muharraqgrp@gmail.com>
Date: Tue, 30 Aug 2022 04:53:18 +0100
X-Google-Sender-Auth: mGWLVclzidUgKLjaCQXes26pXeQ
Message-ID: <CAOKsmcf-wxGn-F85CSgrD4zBz29MMAU4-QbLD_wVKo4Xdz8FJg@mail.gmail.com>
Subject: Re: Al-Muharraq Project funding
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:sender:mime-version:from:to:cc;
 bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
 b=l4X62etHXSEjI9IYdrX6IxjCj4CMK9WxMMzharCxB/t9mHerRIbNBGBh7ynqum/uMA
 Iw34YtmeoAvsLE1B7hrXkwsNVqmUvbmfafz6LbSGr3dPgcNRR64MH9XjXtK0XxpGGceP
 NImvUGY+Mvd0m+t+G7RxaWaEsh7QZyhizsph7VCEaECeK+EZnFqoKS4LScFyfJvnPME4
 3yT4TPqpKVpWJ3qjGhzAemv4MAgIY9KD3MAJQYptOcak5HY5hY70VYpTvo3gfrWsyZZH
 EgG3jXkS87My6f7mKQ0F6EDs4ozhw+Ei1f8XW+UHasFNVE2UukCJ8L7WxGMdNZggrjPD
 zWEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=l4X62etH
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

-- 
Greetings from Al-Muharraq Group Ltd.

I have contacted you to consult you for a funding resolution for your business.

My Name is Saif Yusuf. Do you have projects that require funding? We
facilitate the funding needs of private project owners around the
world covering infrastructure, housing, real estate development, IT
parks, industrial parks, film studios, food parks, agricultural
projects, health & wellness, hospitality, education, electronics &
telecommunication, power & electricity and oil and gas sectors.

If you have any queries regarding funding please revert back to me and
find the solution to your financial needs.


Sincerely,


Saif Yusuf
Business Consultant

Al-MUHARRAQ Group.
#sblcproviders #bankguarantee #mortgageloans #unsecuredloan
#projectfinance #startuploan #tradefund
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
