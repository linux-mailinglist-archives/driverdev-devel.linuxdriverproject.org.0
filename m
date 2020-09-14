Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F0268AA9
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 14:09:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1E1684D3B;
	Mon, 14 Sep 2020 12:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJ7HLlX9ek42; Mon, 14 Sep 2020 12:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E1A684DFE;
	Mon, 14 Sep 2020 12:09:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0D91BF3B1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12E668711F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPC4HHMG8MHQ
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D84587091
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 12:09:30 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id e23so22880457eja.3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 05:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=ky18TPRBU/lAF50an0jxa67qMBsDjsOhP5uZilZ0pG0CD09kDGJvrHleFjBR3gQQUa
 OYUhzoNv3WkKtjJ3WmirDfwkzkIk4meXY34kAiRAN3Z6MbWWbAUuaI3JBx9p6rY+Kdjf
 HDUQTMqDo++OJ7kWCM7CNHz8WGDyqcEXczTQ85Hv5rAqzIH30BnhpdvGrY8K+Kjgk9vd
 C7N2dYo+V29CPVa9wr8ypJ4F1dqrEEEILSgRT+CXNWI/hsErFtsLgEd5vS566zVbcC0M
 cUqaYo0zxVl4g2dg7TuMdxMr36kJr1h9rhLP9J6pBu0gkchaLBRE11Fwv+ZyXizoDnwf
 W7NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=gxYQz48aGorfvze6exW0FuIKKJvVhs5z+cRnEenJUaY=;
 b=RVYNe9MBfqLSBlLSfUeqU9ZQ8VyaH3cRW6fFF10oaTAcFFv+SiI9XfNBcSKgJ78oBQ
 PDUjUYwo3lfT/gALn8cSGmF8Y8g6tiAFfYFWdMT3RvNJmwVcjy6hnaLeIQaMRd1yU1Y9
 yoJnkYeEfA/LthvUY7j/HQe+hAxqCh+KMSFVRK1+1nIlgDPkPdk0N6cFIkU9VTr3XzLX
 FoqFkfSBGD9TfBTqc3YTxsZC5h6dENstXSb3sJm9Ki76GGeatjYbPMkagT7rIgZfutaz
 /iWmipES9QRFGslCHxZedx4+SdJhyLgySKaSvt5lFuX9jCWPx3C3v+1S+ZyrdIVQWObX
 rpcQ==
X-Gm-Message-State: AOAM5329OHTZrZ2p1tJPPSoIibNxgMJWQn6ECiVtffgr+6AoAHw/MFu5
 i5UZHreOQAZmmr1sIF3Dnh8FCPqF8+78Vfgroww=
X-Google-Smtp-Source: ABdhPJxmu3yjhAJBZCfpDCVae9w1XM6OLAbqm++5ZAHLx1578osZ/VtpUZEreCqt3PwCMq1ktOd4xaZISNb/9/WCoDU=
X-Received: by 2002:a17:906:71cc:: with SMTP id
 i12mr14213871ejk.507.1600085368621; 
 Mon, 14 Sep 2020 05:09:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:6945:0:0:0:0 with HTTP; Mon, 14 Sep 2020 05:09:28
 -0700 (PDT)
From: Ms Mary Mcniff <dhlcouriercompanymiami@gmail.com>
Date: Mon, 14 Sep 2020 05:09:28 -0700
Message-ID: <CAG_OktovX7ksiO93OuakHQ6_t2hyKo-p9okK6TB+PcB2Z8UL+Q@mail.gmail.com>
Subject: Your Respond ASAP
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
Reply-To: mrsmegwilliam6@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
From Chief Compliance Officer, Citigroup Inc CITIBANK
388 Greenwich St, New York, 10013, United States United.
PAYMENT CODE: FRB010
Swift: PTBLBXXX
==============================================

Attention: Beneficiary,

We write to inform you that Series of meetings have been held over the
past 2 weeks with the Secretary General of United Nations,U.S
Department of State and Dubai Union Organization this ended last
week.And parcel is under our custody right now, It will deliver to you
within 24 hours once you clear the charges which will cost you
according to the BANKERS COURIER SERVICES that wish to deliver your
ATM CARD card to
you immediately.

However, it is the pleasure of this office to inform you that your ATM
CARD number; is 29741733 and it has been approved and upgraded in your
favor .you call me for the pin code numbers. The ATM CARD value is us
$10.5 Million only.

Kindly contact the paying bank for the claim of your ATM visa card
payment fund $10,500,000.00 through the below contact information;

Contact Person:Mr Williams S Young
Director of Financial Controller
Bank Name: CITIBANK
Bank address; 388 Greenwich St,
New York City,10013, United States
Email:mrsmegwilliam6@gmail.com

Reconfirm the following information?

(1)Your Full Name=============
(2)Mobile Phone Number======
(3)Current Home Address==== ====
(4)Fax Number================
(5)Passport/Drivers license ======

Endeavor to keep me posted once you contacted the officer in charge
through the above mentioned information.

Your timely response is highly appreciated.To this end, you are
required to forward your payment information as follows to enable us
load your fund into the card with your information and deliver it to
your door step. as the BANKERS COURIER SERVICES are in charge of the
delivery services to your destination.

Yours truly;

Ms Mary Mcniff.
Chief Compliance Officer, Citigroup Inc
FEDERAL RESERVE SYSTEM.
Email: marymcniff7@gmail.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
