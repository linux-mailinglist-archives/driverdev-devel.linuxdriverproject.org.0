Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8813F56C082
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jul 2022 20:37:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 792D14048D;
	Fri,  8 Jul 2022 18:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 792D14048D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbrdHAQTqth2; Fri,  8 Jul 2022 18:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AFAC4052F;
	Fri,  8 Jul 2022 18:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AFAC4052F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC9081BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jul 2022 18:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C239C40241
 for <devel@linuxdriverproject.org>; Fri,  8 Jul 2022 18:37:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C239C40241
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wN8PZXtwx0ob for <devel@linuxdriverproject.org>;
 Fri,  8 Jul 2022 18:37:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34F4240117
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34F4240117
 for <devel@driverdev.osuosl.org>; Fri,  8 Jul 2022 18:37:19 +0000 (UTC)
Received: by mail-io1-xd30.google.com with SMTP id h200so1239674iof.9
 for <devel@driverdev.osuosl.org>; Fri, 08 Jul 2022 11:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=mDH+uDXFhwt26fVYHdrmGQ9LDFDFJ1CU61RKWrGGFj8=;
 b=afQgV2K4S4F8lFW5qyM7n/jaiiYvkOSGywlitx34DvQsai7UGoREenKzTW8nMuMeZI
 EOyTVSLuVBTQmqRx84vheA4fV4nFUQEYmOn4V9Is4VUWTViGwZ3/jOwesLdegZor0dTT
 BtsZ9i+QPcYi/DxMZWNMwHd4U7L+nUx/xr3NM0Ch4wH95A8jaixkUn7N59ngbHWJxrsx
 sgtmfAqad9wkhkCJPb6q1yve4biAYOJHaXeaKD/bvqp3CwnMj38CJc2+lMeLIL/fIWwp
 3kzh3bqeCKmzSZPKWSJUecIa9VHHLlVNdszptpLe1gxZIFBEsKgiKitGU5FhswHZ+nQr
 0SdA==
X-Gm-Message-State: AJIora8k0fc7pZQ/ppwSXI173rty3IzWm1/AAh1OJKSSInj0cJ0dkeJ/
 UxUn+hvF6wxbcuq4FGnikSMCdFXqIpkORFOXQRA=
X-Google-Smtp-Source: AGRyM1tg7CaCHfWE3KYwmoJNkwV487jCsGh3pfBhHXqzLQZKsx0/bAeTCqeYS+14oYuJGti11g3eXZCPMpuN7Qrf5K8=
X-Received: by 2002:a05:6638:41a8:b0:33c:d315:ad82 with SMTP id
 az40-20020a05663841a800b0033cd315ad82mr3004968jab.269.1657305437179; Fri, 08
 Jul 2022 11:37:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:2b13:0:0:0:0 with HTTP; Fri, 8 Jul 2022 11:37:16
 -0700 (PDT)
From: Lisa  Williams <lw23675851@gmail.com>
Date: Fri, 8 Jul 2022 19:37:16 +0100
X-Google-Sender-Auth: zXuk9fK-oeEryGwkCBIzkwVJmfI
Message-ID: <CAMA97TkfBbdgKn=nf8UQb=i-F_T2suLmrMPbX2zQf8Kgh62mRg@mail.gmail.com>
Subject: Hello Dear
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=mDH+uDXFhwt26fVYHdrmGQ9LDFDFJ1CU61RKWrGGFj8=;
 b=AxAWD5M9ejbJQSa1o8HOvXxVAr2w0CrpMhB4Uj+5z7nBJd6n0Wv+ZLgmMl+XTHNmrW
 lx0qGrac32ryAVYbMqbEyKMvMT/rJF4k0ueA2aaIaBp1N2hxl/oSTiRBTuldK843HKJC
 lE+bn4WEJnm598b4NOmSEYsJlSCn6kibZaX/jit8+8qDVqK6LM2DF32LAlRYWHeuGK3+
 eY9PccANAlu4Snv8BNyBGuRrzMWZzh7sY7Z8EPU9CQKn07pleSOb9SRwYLXvMyqB2hiP
 qCWDJEWmKCNupd5hLH5u9oamUrc/FleITFHrVmck/lLVLNTNWNc/4eRKvRmzLzrtNlGX
 FZXg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AxAWD5M9
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


-- 
Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,

hello dear

I came across your e-mail contact prior a private search while in need
of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate investment/business profit sharing ratio
with you base on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply
urgent to enable me provide you more information about the investment

Your Urgent Reply Will Be Appreciated with this emailaddress
(aishagaddafimuslim8@gmail.com)

Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
