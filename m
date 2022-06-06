Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8699253EDA9
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jun 2022 20:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC94A84064;
	Mon,  6 Jun 2022 18:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGHEj0dzENdY; Mon,  6 Jun 2022 18:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8153D84051;
	Mon,  6 Jun 2022 18:12:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7326A1BF2E3
 for <devel@linuxdriverproject.org>; Mon,  6 Jun 2022 18:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7058C84057
 for <devel@linuxdriverproject.org>; Mon,  6 Jun 2022 18:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKLpUq7fEv_G for <devel@linuxdriverproject.org>;
 Mon,  6 Jun 2022 18:12:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF2A984051
 for <devel@driverdev.osuosl.org>; Mon,  6 Jun 2022 18:12:31 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id h188so20762984oia.2
 for <devel@driverdev.osuosl.org>; Mon, 06 Jun 2022 11:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=5Lg/ld1rBwocXfsWBw2MKzHARXD54TqguaWUMMQTsKY=;
 b=R6oV5yHsvT4KffPTiikXa9gq37prZOFhgKzSzvcgf5mBo+u/IQu+5/hKQEkvTwBIrK
 NVinN8FJHziGzLKGHXsy2pNwstSvBE+cUHwR3WGMuPVOP4CIDC2UpDAKSwCo5Dk1P0Dl
 3ECSsFSUEf7mmKzfTjsbruMD6sH235V0iadbLy7xRH6Gx8x/1ktwHE1PE4f4F29ib4+i
 9phAWl0t50yrSzaYmS2eSDuzOZlQa57OxAMEz22MkOLjcgfWlsDtOpbfKnNrKZRQJHD4
 +fm4bHcrjj1X2b934YY5j60ct0kMwe4f5yYieIVls/A1oUPPZnlvvdJfEc6XCCyqqrtU
 b/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=5Lg/ld1rBwocXfsWBw2MKzHARXD54TqguaWUMMQTsKY=;
 b=HWmsyLyyTaG6h/1LVYpagdCjGBrFSYzUVSlOftrewWg3nUZLSxqqclgbpx2cTEObBX
 yAIvfFP1cOrgBTGekftQdJ2ab837v4/sbIw5lXFBS3NExj4phhkkEmtkgKfGOlx4bpBM
 rju2AXKtQdqiNBNqNEMOPlu+kbikza/mGhj/9m1I2gTkDH2HnYfBkNjFpdS7NRZuM225
 8hFuHhAp4LAWQY4aUcwg1z+dmAXD121TtQIMEiWW3LEiXlZ7Qt27NAlNboC/Z7W7CMl0
 E9TmfE0HAjpMnump4mMTbaMAj2ngvb1y1JZ6RSapDX3ATzHqj6H38w6mLr5Bxc99jg8K
 uzRg==
X-Gm-Message-State: AOAM530KuEk9t5UzveKdzVO7edXR2hd0KalFVn+M3x/DoIXa45RcC0DX
 qGE2F5AR/Bnai6REACGbnScq0k7L473vNunf6kQ=
X-Google-Smtp-Source: ABdhPJxSV9/q7JPHJHKNR68diunNbnbWuu0nzBjKbKyqHZsQiZXb02rzJB5yVecscAq92S6jNQb2gqtzc0iJQNct1pg=
X-Received: by 2002:aca:be05:0:b0:32e:1ce9:755f with SMTP id
 o5-20020acabe05000000b0032e1ce9755fmr17488686oif.154.1654539150635; Mon, 06
 Jun 2022 11:12:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:9b52:b0:a5:478a:2248 with HTTP; Mon, 6 Jun 2022
 11:12:30 -0700 (PDT)
From: "Hon. Barrister Matthias" <honbarristermatthias@gmail.com>
Date: Mon, 6 Jun 2022 11:12:30 -0700
X-Google-Sender-Auth: 2TwDtLRPML_9ZyrfYREzS0Xnp5M
Message-ID: <CAHkN6SO0TT=+LLNK1wj10sE35CPMHwWOVebaKhQEfRVWGpOQ5A@mail.gmail.com>
Subject: My Greetings
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
Reply-To: honbarristermatthias@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

My name's Hon. Barrister Matthias, I'm sending this brief letter to
solicit your support. I had a client who is an Indian and his name is
Mr. Gurbhagat Singh Bhatti , he was a dealer in magnesite minerals
here in Austria and also a Gas dealer in Russia.  He died six years
ago in Russia after a Gas explosion in one of his dealing offices
which led to the death of both him and his wife.

He deposited the sum of 4.5 million euro in one of the legendary banks
here in Austria. I have tried all I could to get in touch with any of
his friends or family members but no way because he had no child. And
the recent death of Covid 19 killed his only brothers in India last
year.

So I want you to apply to the bank as his Business partner so that the
bank can release Mr. Gurbhagat Singh Bhatti funds into your bank
account. I will provide you the guidelines on how to contact the bank
and we have to do this with trust, because I don't want the bank to
transfer the fund into Government treasury account as an unclaimed
fund, so i need your response

Warm Regards,
Hon. Barrister Matthias
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
