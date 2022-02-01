Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 371B14A59B6
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Feb 2022 11:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F9B9606E7;
	Tue,  1 Feb 2022 10:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p5nVcEEwRaMi; Tue,  1 Feb 2022 10:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00635605E8;
	Tue,  1 Feb 2022 10:13:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1BFD1BF995
 for <devel@linuxdriverproject.org>; Tue,  1 Feb 2022 10:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A105840422
 for <devel@linuxdriverproject.org>; Tue,  1 Feb 2022 10:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I5Jk51waHIW8 for <devel@linuxdriverproject.org>;
 Tue,  1 Feb 2022 10:13:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F232A40425
 for <devel@driverdev.osuosl.org>; Tue,  1 Feb 2022 10:13:24 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w14so33178229edd.10
 for <devel@driverdev.osuosl.org>; Tue, 01 Feb 2022 02:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=6fJ+fZY5GiZZHwpcXYOHVxRnu3uQZSG9RLn+T0JVJ8M=;
 b=HxBwAu5O0e+r9huSuPhHoqs9KuAFV6zUZ9+J9kDkj2gxMQ4B1HcbJn6OJOiEDnIQb7
 n98zxL8s2vwqqp+TBymW68iHaiUxOF/2oEwtIwjJwDXfSv5jkZh/EcZhpxB04gukH7I5
 PAIVdxQThoBYt+EFNHntuF0oclpH2Aa08NeKQPJ5Pq6aV8m48ySuOwwtXEaj5nZLq1Z0
 ciiBKwkwNKFO+SW+2T4xCuT4z87fx0hRS0dkuNbXsFydSWhR6wb8FVgNcxC9A6qoNXDD
 cErcfLjn9VVI1+kZlEf7Rq8DSIMm4kDq7Q8U9F+T1VSPCSuQ6cNijIQg+YaHJJZdtuMs
 wDmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=6fJ+fZY5GiZZHwpcXYOHVxRnu3uQZSG9RLn+T0JVJ8M=;
 b=TGt+bANzXGSCII5JYwRN/TL1W1B5ZECFME/+rF/jNEEfyP4jE7iFf462WBEA5LL2IM
 ygGrzs/csTEAia1Ac4oX9OCoiPmXXppfqx1wWYc5KKmmMs2Hn/2QhQM36RLZw8lQO4g/
 v5yjHh21W4uWZkO9MK+8jZqgdBoXwlk758AY2BhTJCZDJCilTo/8U5QtK4yXsV4IOYHe
 7DAwm3jVP9NCvaqR00Ks+r2+cpfDaIA3B3XBhigeUB477ufYanmJ2b26CDrBI2t3o5vs
 0dA2x6OyiIoOQRBMv6qLdkQgbV5qvBCWZ+Te2z88tFm09ys1z72jyTZDh3eh86hgPJkz
 PCQg==
X-Gm-Message-State: AOAM533dB3ffj+N97WVaqT5ZN0I9m1gQ0owPl7fr6TNVpGq+627vgenR
 dRRHSx7jSrnAJFD1UtDlLdi6HjoxsfyRgHXI9sM=
X-Google-Smtp-Source: ABdhPJzmlnGyjGdKgP0pJmIY9HXfKr7Z5/4A4PoqpOePa/4IwQg0utBnWHSfFbvGknAtsdDRyCsb21/ij+Ge2mMmbZo=
X-Received: by 2002:a05:6402:2549:: with SMTP id
 l9mr12281909edb.129.1643710403098; 
 Tue, 01 Feb 2022 02:13:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a54:3708:0:0:0:0:0 with HTTP;
 Tue, 1 Feb 2022 02:13:22 -0800 (PST)
From: Kelly Myers <kellymyers006@gmail.com>
Date: Tue, 1 Feb 2022 02:13:22 -0800
Message-ID: <CA+bRPitaz2ryMpGi9HTq2NYqU6V6UCzTa_Q66w2rWSAd9foZPA@mail.gmail.com>
Subject: Dear Email ID Owner.(USD$4000 IMF COMPENSATION FUND TO PICK UP TODAY).
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
Reply-To: westerunion909@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Email ID Owner.

The IMF is compensating all the email address that was funds as one of
the ward win Victims and your email address and your name is among the
listed one of approved to pay the sum of $3.6 million U.S Dollars. We
have concluded to effect your own payment through Western Union Money
Transfer for easy pick-up of those funds in good condition,$4000 twice
daily,till the $3.6 million is completely transferred to you.We now
need your information where we will be sending the funds,such
as;Receiver name(Your full Name)address and phone number.Contact
Western Union agent with this Email: ( westerunion995@gmail.com  ) for
your payment fund.

Ms.Maria Zatto
E-mail:westerunion995@gmail.com
Telephone: +229 682 97 169

Contact Ms.Maria,immediately you get this mail through western union
email address above to enable her speed-up.your payment and release
the $4000 dollars MTCN today for you to pick up the payment OK.

You are expected to provide us with the details as prescribed below to
enable safe and easy release of your funds today.

(1)Your Full name:
(2)Your Phone number:
(3)Your Country:
(4)Your Age:

Thank you,
Dr.Kelly Myers.
Contact Dir.Western Union Money Transfer,
Cotonou-Benin Republic.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
