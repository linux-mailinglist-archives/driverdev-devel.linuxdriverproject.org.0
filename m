Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1508B318829
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:30:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83F046F60E
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 10:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nM6PaQvFHBpN for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 10:30:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B01B16F615; Thu, 11 Feb 2021 10:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48E876F4A1;
	Thu, 11 Feb 2021 10:30:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 363FF1BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32D478739C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q7OVH3y2cipM for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:30:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D4F08739A
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:30:19 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id g10so6432988eds.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:30:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EPyvQUHLX1Tn5p9iynyrC2X5bIUlPY0d5Hn4CW229v0=;
 b=uVloq7C8ermrtiXxqt3WgFMd95VeAQLrnbUWT9EhPgwMFgBGGmZ38Q2Vw3er2CXJ8b
 m9HROFlgWkbJMu3SfqSpoGPLdRB9WSyKN21XaFAUnGQMSyJPhOQER4eLHsHB+Xolo6u4
 YPS9h3wptZzAD10N8p/fojy2CBU6ynYR7w8l2H13lxQpTMv8gxmP4OpOq/gJsLCRoG/P
 55OXhl/dPgpJgRh9rLZMHLL6lI+a2qmtgC2SSTVuAbKy3+/9Mia9opDWYvKuq6pOVC0b
 zl4UvXGv08O1nmdKxWJd/VDQ0q7+zB5fpMmIsuieq2Qk0IHiWbCvMeEeVAxUZx1625HI
 OhPw==
X-Gm-Message-State: AOAM533fCSAlso/zZMsL0k4KnJeTWyHCwrLCvzxnYD0LVupNTwFZDWgp
 3hWWzvFpumhB0irBPo1JJOwgRte+UHAuNQ==
X-Google-Smtp-Source: ABdhPJx8/v5y7FUHkXGsbagiWYKbG1sWmC7khzrhhL6M4r1mLQKIfqs0H8olfmHuzMSel4JmG6PG7Q==
X-Received: by 2002:aa7:cd87:: with SMTP id x7mr8038321edv.210.1613039417576; 
 Thu, 11 Feb 2021 02:30:17 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com.
 [209.85.218.45])
 by smtp.gmail.com with ESMTPSA id o6sm3935578ejx.78.2021.02.11.02.30.17
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 02:30:17 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id w1so9210094ejf.11
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:30:17 -0800 (PST)
X-Received: by 2002:a17:906:4bc2:: with SMTP id
 x2mr8060170ejv.143.1613039416861; 
 Thu, 11 Feb 2021 02:30:16 -0800 (PST)
MIME-Version: 1.0
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
 <20210211075715.GD2696@kadam>
In-Reply-To: <20210211075715.GD2696@kadam>
From: karthek <mail@karthek.com>
Date: Thu, 11 Feb 2021 16:00:04 +0530
X-Gmail-Original-Message-ID: <CAJ5zXr3ONFFHL7g8Xt=BjM9SJK16HEwiqhkBPTbrBTwa=DDqog@mail.gmail.com>
Message-ID: <CAJ5zXr3ONFFHL7g8Xt=BjM9SJK16HEwiqhkBPTbrBTwa=DDqog@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Should i send them as patch series?

On Thu, Feb 11, 2021 at 1:27 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Feb 11, 2021 at 12:40:41AM +0530, karthik alapati wrote:
> > @@ -867,10 +845,8 @@ static void PHY_HandleSwChnlAndSetBW8723B(
> >       if (bSetBandWidth)
> >               pHalData->bSetChnlBW = true;
> >
> > -     if (!pHalData->bSetChnlBW && !pHalData->bSwChnl) {
> > -             /* DBG_871X("<= PHY_HandleSwChnlAndSetBW8812: bSwChnl %d, bSetChnlBW %d\n", pHalData->bSwChnl, pHalData->bSetChnlBW); */
> > +     if (!pHalData->bSetChnlBW && !pHalData->bSwChnl)
> >               return;
> > -     }
>
> In this case, the + line is correct.  Good job.
>
> >
> >
> >       if (pHalData->bSwChnl) {
> > @@ -929,9 +905,7 @@ void PHY_SetSwChnlBWMode8723B(
> >       u8 Offset80
> >  )
> >  {
> > -     /* DBG_871X("%s() ===>\n", __func__); */
> >
> >       PHY_HandleSwChnlAndSetBW8723B(Adapter, true, true, channel, Bandwidth, Offset40, Offset80, channel);
> >
> > -     /* DBG_871X("<==%s()\n", __func__); */
>
> Please delete the blank lines as well.
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
