Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0822912CBF6
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Dec 2019 03:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40F6984AD8;
	Mon, 30 Dec 2019 02:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOVlKhnoGAOC; Mon, 30 Dec 2019 02:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02810838F6;
	Mon, 30 Dec 2019 02:40:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2D8C1BF340
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 02:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9C62F84896
 for <devel@linuxdriverproject.org>; Mon, 30 Dec 2019 02:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9bnIfKtQ8kSB for <devel@linuxdriverproject.org>;
 Mon, 30 Dec 2019 02:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1448B84580
 for <devel@driverdev.osuosl.org>; Mon, 30 Dec 2019 02:40:57 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id p8so26811062iln.12
 for <devel@driverdev.osuosl.org>; Sun, 29 Dec 2019 18:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=JYxCpUju7whmqChlUImK0eLoehpPQf9A6AtH17cAfokzxA4z97UwKas4EW/igtDXEU
 wHvMAUNEWNbpCWG3YkVOUpzpBED0lD9Gj3XzCy0y3rhK527WFXKzG5wizHgqU9Q+fcf4
 5/JA71Fu/M0LPiMOfnueWOzXcBI02YTuHYInUH0XaASgZahnleBT+x8C9rrcuzn8ztPZ
 w0RAHf9tNkNvhRMlM6piylfTGCR1KQYh1HKSERtAdcxVj0y1/WiF76McTGJ4RfZ+YLi3
 4DT7N+VTX4tw92LPg6j914+Ri22kkAMtsbskV06WGNhqZOEJxo+hketHxjWtc8wJMeqX
 roNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=jXn+zgqdIECSsN8/BYbCZAi64t7lIx6HtfSIk04m7JH/zylA7N1po2MfIj34Cxv8cM
 TbTMJnkJfKnPkfCg8npcLWUOfsfaK3MEBY6+GBu8A7X4u4hBw2tCzrltMdDNalFQcJNb
 P5UWOpMkV+m0Xs113jjSm6v7J1cKgWcWaCqmMEu1HIXB9834jxBAp/pwZYXbUORl+CEU
 v4tp1QsOZS36SzE6idSTqsWUeaKLqC4hV0ViqQnFViXUHjq8TCZyGHH9HjRUoUalIr9Y
 1ulsYu71rZQIeWoTxVxyOqtgFXhRxaqnEZcFuwqxEL1K0opTnwql15MahQqFDHf7/PXT
 or8Q==
X-Gm-Message-State: APjAAAU85HKdAedk51BxT92xkVHyk4M1EPnyMzmPBq16orAMZ+/Cr7g9
 qcJh4byoQm4kcnf+oPnN0t3sGpt7fpdDfOk+VjM=
X-Google-Smtp-Source: APXvYqylhALD+jp03RLgOT+/3dc6JEGYqZZa/NQbXWZahfHhqg7N54FIF0i9o3JG07LVPlx1Doc0iFIs9wJ9dMSFW6g=
X-Received: by 2002:a92:ca82:: with SMTP id t2mr56664410ilo.242.1577673656457; 
 Sun, 29 Dec 2019 18:40:56 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:da0d:0:0:0:0:0 with HTTP; Sun, 29 Dec 2019 18:40:55
 -0800 (PST)
From: "Mr. Moon David" <pjius001@gmail.com>
Date: Mon, 30 Dec 2019 02:40:55 +0000
Message-ID: <CAA0xNFB2P-0XVQ4cG4FxWLx7-tudCa+xwsWOqw5h0O3uGcb_7w@mail.gmail.com>
Subject: Greetings
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
Reply-To: moon.david001@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir/Madam,

I have investor that want to invest $6.8 Billion into a  company that
needs fund  for expansion only.He can not invest the money to new
Companies that want to start up but into Companies that has been
making good profits but needs funds for EXPANSION. He can only invest
in start up if the investment proposal is realistic. The investor is a
former Petroleum Minister.

His Area of concentrations are Real Estate, Biotech,Textiles ,
Information technology, Pharmaceuticals , Oil & Energy Industries,
Mining &Metals Industry, Management Consulting Industry ,Maritime
industry, Hospital & Health Care Industry, Consumer Services Industry,
International Trade and Development Industry ,Gambling & Casinos
Industry, Electrical/Electronic Manufacturing Industry, Insurance
Industry, Chemical industries, Marketing and Advertising Industry,
Leisure, Travel & Tourism Industry, Agriculture, Aviation, Retail,
Import and Export, Trade and development industry, Real Estate &
Construction Industry and any other viable investment opportunities.

If you recommend a Company to take loan or investment funds from from
my client the investor, me and you will be entitled to 5% of any
amount received by the Company from the investor but if you are taking
the fund directly as a company i will be entitled to 2.5% and you will
retain 2.5% as Global Finder's fee commission. There will be a face to
face meeting between the investor and the investee after signing (MOU)
the (AORI) should not be less than 3% per annul if it's loan or direct
project financing.

Look for a reliable Company that need funding and we can easily make
5% of the amount received from the investor but we need to maintain
absolute confidentiality in the transaction as the fund provider want
to remain silent, so you have to keep it highly confidential between
us.

I will need the company profile and the project summary of the company
that will need funding to present to my investor.

I look forward to hearing from you.
Mr. Moon David.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
