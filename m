Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E40707B1B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 May 2023 09:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E71DB613FE;
	Thu, 18 May 2023 07:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E71DB613FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HnP8o8EauaW; Thu, 18 May 2023 07:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3A4560FEF;
	Thu, 18 May 2023 07:36:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3A4560FEF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4991BF46D
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 07:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0675540A01
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 07:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0675540A01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpgtqQF_nk9g for <devel@linuxdriverproject.org>;
 Thu, 18 May 2023 07:36:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29B1040436
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29B1040436
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 07:36:45 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id
 38308e7fff4ca-2af1822b710so3051251fa.1
 for <devel@linuxdriverproject.org>; Thu, 18 May 2023 00:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684395403; x=1686987403;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=ZdHKMIuXRKZHx0hAXlxbhsN33dxWB12WBAqAGiHVTbpiunvj41mZIy4lhb8k21eC94
 WEkqHULWJbtkZJBlA9nsMAeeu+Ywzri2h6G5MU2gVR8NkaVxapI4vL2XkWu7tIlAaDez
 SqY6gZbzdXp+61Megbibve5zv4xrdGCg0IqMrc7R+OvsDv+WgBVOVQcSoFrtpUCbAuzd
 85drPwu9Ap5CPRORjvFjQBqmKE0mGiuevVyr0q3occOw+FEdCAPP56oVWJoyH8tmM9aV
 95eSP1/i9LW7EE5rzaogXW0Xgp1jOfoz88bUq2uvLhwZFFkhEcOcCJtJim5SRtSFKN8O
 0HQA==
X-Gm-Message-State: AC+VfDztt3+cF2iC7gna/Is0EbGUBO6tuv2xL1CWWrrbxxZWsLwYagcl
 l7+Kb71mKaDUvVJ/LgNlr4gVcjIni5aewjLo8Q9cGsqc1348Yg==
X-Google-Smtp-Source: ACHHUZ7UwxvVovSFIWfA5npspTJiSx08DCpjGFaRTYtVZY/JK4LFBzzoXvZ1FuC8xVlQUx9EdBw42MOgPxwkl5ksce8=
X-Received: by 2002:a19:5515:0:b0:4dd:afd7:8f1 with SMTP id
 n21-20020a195515000000b004ddafd708f1mr935877lfe.52.1684395403170; Thu, 18 May
 2023 00:36:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:7310:0:b0:222:5939:ed00 with HTTP; Thu, 18 May 2023
 00:36:42 -0700 (PDT)
From: nina coulibaly <ninacoulibaly214@gmail.com>
Date: Thu, 18 May 2023 00:36:42 -0700
Message-ID: <CAL5O4-FkuZ4+cfdfacpSK4rphAB62+860E4OyTBSCttWKZzU-Q@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684395403; x=1686987403;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=XiNus60h9WI4EZz0ffYybRwAlrnSCl4k2D2RFn0vfo1XfeP6ga9sLXHoi2xO1xcydt
 Jd6KdLtl5NGgjoRj0xKhHq3iZKmnfZHLTi9PgwLZ/j3lg9xg8JLnji0ppur5o7r6tkCO
 sKaGGpG9Q02z4c9IWhu1uUeQ86AsJw9OBQpVLJKsirpZO6/n2lXz2EfbA24L5oBBoewh
 T9YCYDtIeEKtqEkR6dkedVMolI4LuD8kmZI7jFEQAMv14vFMC/DpK4pzhxDHy9qzuus7
 vOzosoJDS2fbV4Wd1dFe34nJ7yDfdRk5c8AXB/jlAz7RAYpQ6ecyk6hAFaGWOHRqH6n2
 nICg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=XiNus60h
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
