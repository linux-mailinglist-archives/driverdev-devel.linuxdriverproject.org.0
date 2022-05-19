Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8743052DE95
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 May 2022 22:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5D498452B;
	Thu, 19 May 2022 20:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdDpQTpZ7oVE; Thu, 19 May 2022 20:46:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A563584528;
	Thu, 19 May 2022 20:45:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE541BF2BA
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 20:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BC798452B
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 20:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6qwmOEChyzp for <devel@linuxdriverproject.org>;
 Thu, 19 May 2022 20:45:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E50E484528
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 20:45:56 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id c1so5606947qkf.13
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 13:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=AV27THfLgzEa5ca9fdQa8AZfn5C9HrEFNMVs5junuQM=;
 b=dZozz8D8epGxOjWYTHEmS7WOKB5MBqoOQ4MRXpcNxZkQv8jsWsaM7462pRBoh9HeFa
 YXY636xID84r8hqw3T1tnGV82t5PFDp2YY6n1nUFE+/RkyyReSsy+Q6NqJ0sodb+SyMt
 2Ie45PxdRTK/JblnDHlxbvvG93Duj1ai6J0bgBOuPK4wDjUD11lD/qlF2SQhzX4uTqIg
 7au49vOUloUL6pLYshf6kTr+8UGwMbsFH5Z3vIO7iMY9RzfsZUsUJgbPVIBD5c4geQNN
 HpyykmHci5PK2FBa3CaesNsZbGbGobMEU8qnQ8yRiVsJCgFI5mSXD7nn64MpWKUf4K9d
 7a/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=AV27THfLgzEa5ca9fdQa8AZfn5C9HrEFNMVs5junuQM=;
 b=7vtd72Pl+biRvaP28RK010nq2tEsVON9SmIEjxEZ/s7Xtsz2SVUlVZkSHRs7LLKgkv
 pV81PF+ur5LE5/dDr8NWIQ9RNwasxiY5q5RIajZkvN7C8FqghruC50LSbmIoanN/LGBR
 9Pcx10Rne6SMfRlJkB/CR0DLkwfUVYiV+K6W185SBQLBt6gGIY8/AqVCn53N2n0l8rA6
 lvZhmYf0j6jGxM8/oDDyV2eTsu07NGb0xTFZ2dGVdyyUx0Tz5fNFAFs+Se+2bD3O0QwJ
 0zqG7S8k4W6E7CYUkqv4cRfNMt7ZmsoBBxFKuqMQCJxqQL7tXb4KkQ7AVHb1ncMYzXB3
 cBIw==
X-Gm-Message-State: AOAM532u35jalT4T9IK2gnIUHAgGfkEmU6NHZfaVtj+PLQZPgFXgDIiI
 gQNglsShsMgpk+zkLmXmNHuvPROiADgmKg2e4Y8=
X-Google-Smtp-Source: ABdhPJw3kE6amPVWgKBVtl2icqPB+r7WWmtC6x1uvrcubk70Gig6xb1KarC4cJvNVVtdZUHXztzA0DVWnV+zchca0w4=
X-Received: by 2002:a05:620a:294c:b0:6a0:4cc8:4bd7 with SMTP id
 n12-20020a05620a294c00b006a04cc84bd7mr4168776qkp.289.1652993155590; Thu, 19
 May 2022 13:45:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:19ce:0:0:0:0 with HTTP; Thu, 19 May 2022 13:45:55
 -0700 (PDT)
From: AISHA GADDAFI <mrzakirhossain4444@gmail.com>
Date: Thu, 19 May 2022 21:45:55 +0100
Message-ID: <CAJGJQuZPf-yvPmBvKzSyrGYREz+0oK3KLLtqoC5-xvN0gxZcTA@mail.gmail.com>
Subject: Dearest Friend,?
To: undisclosed-recipients:;
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
Reply-To: aisha.gaddaf68@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearest Friend,

In the name of God, Most Gracious, Most Merciful.

Peace be upon you and mercy be upon you and blessings be upon you.
I have the sum of $27.5 million USD for investment, I am interested in
you for investment project assistance in your country. My name is
Aisha  Gaddafi and presently living in Oman, I am a Widow and single
Mother with three Children, the only biological Daughter of late
Libyan President (Late Colonel Muammar Gaddafi) and presently I am
under political asylum protection by the Omani Government.

Kindly reply urgently for more details.

Thanks
Yours Truly Aisha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
