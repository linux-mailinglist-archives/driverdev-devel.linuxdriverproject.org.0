Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D06EA405805
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Sep 2021 15:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E3181BD4;
	Thu,  9 Sep 2021 13:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMnRelI7IYla; Thu,  9 Sep 2021 13:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB91381B26;
	Thu,  9 Sep 2021 13:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3999E1BF489
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 13:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 295AC81BD4
 for <devel@linuxdriverproject.org>; Thu,  9 Sep 2021 13:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyaNgqsMDiw8 for <devel@linuxdriverproject.org>;
 Thu,  9 Sep 2021 13:49:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1432581B26
 for <devel@driverdev.osuosl.org>; Thu,  9 Sep 2021 13:49:04 +0000 (UTC)
Received: by mail-io1-xd29.google.com with SMTP id z1so2345124ioh.7
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 06:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:to; bh=PiIa8TqM5Mmj0hDNLeRMZNh9RbYUYnMgtvBSCi7Gs5w=;
 b=iStALrMsaqDvQhT5JQuG7TQcnsUZ3cIVgPqnWWt44vK8GMMTqPBmEcbK9+tlHvuw4G
 8iNYyvF3woym8GI+iPTb4yhLsIq7N08AWA+5Vl3yz/M+uzaLzRkcpbaV8xzeIIghkwN2
 h84Q4KiNLth8MwmFLIj8DQm5XDDsj5hlE+sXcc0qMrL2hvWSLwt2CE3C3CS8qagpAD43
 1XgNodVrkTUCve0tB4zxddw4+N+phcv6UcQPr3CU0sqpO5O8m80ncRpLCXHovC0O92q2
 psOjFmMzpJ4hJGU5XeHVvd4+99cKbFtQQTAdCWWkS4Wem+fOnJls8nypSci6bF5WdSpi
 t8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:to;
 bh=PiIa8TqM5Mmj0hDNLeRMZNh9RbYUYnMgtvBSCi7Gs5w=;
 b=c2275f4/J9j/pirpTnhs+SuSjVwkdEUQj0EJVLSfCKRGJMFqow1IZAJqRsHILPMjMC
 DeNZ0QjUfGwMjFMgYibralKoTv7wR5tk81Aq/9ZllFEwC8LbomSGXM4jCruy++i4rXRr
 60ONDa9J3KYuDgCO1HmAWAI4BDVWUTR6g536kpZHVDZ+oIrN72YNcH/DMmU/u8n/Mm/l
 /fAhiORnql6w2AZT+Bw/mTXQd9jWAsnHw1REzsrbZoK25g7/5nrXZkSKwG3vEo4ObgDD
 jLK7u9RlawzzFDtgtKMagOLWNVYS4dKTjCkhkVugYqMEOvhPj2UdO5Wov8hsph6UOqPf
 G/sg==
X-Gm-Message-State: AOAM531rrWQILcFmuBhBQIy3t9LaEDdV6gVRxlpP7Yaj4HcRGA2k1eR+
 vMSjePNo6z0fFjo2N2lF0cOwJoRIXsu1aDQD068=
X-Google-Smtp-Source: ABdhPJzJJhfeBOvZ4rwFn22HFwuhSx+DmBtTXvYsYMtBlGHnzreXDPk0gilXH1WcBTbXR6SQvUQo5tM7gB2CUGdQaHA=
X-Received: by 2002:a05:6638:1401:: with SMTP id
 k1mr2951230jad.58.1631195344070; 
 Thu, 09 Sep 2021 06:49:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:b553:0:0:0:0:0 with HTTP;
 Thu, 9 Sep 2021 06:49:03 -0700 (PDT)
In-Reply-To: <CAGCa2iJ+2-x0BvF7=rUtQQbr2w0eaU+TopZCczmKMnMdUg7K0A@mail.gmail.com>
References: <CAGCa2iJ+2-x0BvF7=rUtQQbr2w0eaU+TopZCczmKMnMdUg7K0A@mail.gmail.com>
From: JENET ADARA <judge.udo.ako@gmail.com>
Date: Thu, 9 Sep 2021 15:49:03 +0200
Message-ID: <CAGCa2i+v_TZnyFeO9bOokDRx9nbt8rXufj9EGQALXrHUX2kf6Q@mail.gmail.com>
Subject: Fwd:
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
Reply-To: elizabeth.m2w@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

---------- Forwarded message ----------
From: JENET ADARA <judge.udo.ako@gmail.com>
Date: Thu, 9 Sep 2021 15:48:31 +0200
Subject:
To: judge.udo.ako@gmail.com

HELLO, DID YOU RECEIVE MY MAIL?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
