Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 728E015590B
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 15:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F057D86599;
	Fri,  7 Feb 2020 14:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOwxhbf1adtZ; Fri,  7 Feb 2020 14:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D23BB845DB;
	Fri,  7 Feb 2020 14:13:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4432D1BF364
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 14:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 345E886C7B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 14:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kaDKUaLCf8AU
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 14:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F29786CC5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 14:13:05 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t2so2892527wrr.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 07 Feb 2020 06:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=9zVso/y+l9fYJUWFKEx22kJ6EV7m4O/L863RKKWXIL0=;
 b=GDiGSWI2PY/cnx10agWBuBo5fD0WKM2wlk0ScDI/NrBBnj+UV8dZJ4nZ90V+3dxxBG
 +39CTs2RwPO603YO24p7wEY8Sk3D5EPsCBkYGEV9PzQKw4lCE3PO0VeOMBWKGX6cu+zy
 QrTBaMB9MoJsOvswov/srkzQ5rI/dt66RpUfyeKAgD51fq/qfjDELtuNwwhDfwQjlQSa
 Xk+ruFWeu+BzTMVIzb1MCCct36ew2z8Yx/D+34FS02YwBfU8aVlLRNpW1dhYHqk5V1te
 PAraSwJpiTMhXAOBPgWNYJwFe+vDabyzFNOiiu6QMCwFwo2LRcZsD35WOMFzozUZUZAD
 IzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=9zVso/y+l9fYJUWFKEx22kJ6EV7m4O/L863RKKWXIL0=;
 b=s7E8mrGrGuWWKQErhOSn0dH7oLVT86XdUKKE1kqF9bRUcLPl+g6STnR9GLs0vc+9vB
 s/ntXKPH8kcKPXqimKI2IShJFbeV1VaYiAWf0LBt0/9+OnLkGdEAiWWuVWmwK1k/MISw
 TpprIOb9zznP58kK8hLg0eJPY3gX/othILbSLgnYVg5WD+sjwOCPHscZdvqzxpCB/K9h
 YwPgXPKyj1DRHpVk4Sd7ruo0P9t0bePqQL3prRZq0pF48ZwHHrCfKrfdlYVMjBbRzBat
 yNalVdOKZTS901f/5Ud2kjXBmxPOkq8uUBVvlzkGxpXdMAUe/77g5e2J0Lspl6dEkuPg
 6zUg==
X-Gm-Message-State: APjAAAX81DFxH7s4zcAousI9BZKdkzR7+Rzehp103H0v8O6lFpjZjLLD
 W3Rm3ODNpuB2m4SghJqUlkBAd0yD/Ar2vGK/iJ8=
X-Google-Smtp-Source: APXvYqzbUgCQrLEtxcP6GGoC2ncIAXt6ed4YNY5iAYc27GPGxIeqKer4x3Sgkn0sVVlYrjYHot42MFqLorXyuGG0Zqc=
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr5207101wrt.229.1581084783906; 
 Fri, 07 Feb 2020 06:13:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:600c:550:0:0:0:0 with HTTP; Fri, 7 Feb 2020 06:13:03
 -0800 (PST)
From: "miss.amina ibrahim" <olajireabisoye@gmail.com>
Date: Fri, 7 Feb 2020 14:13:03 +0000
Message-ID: <CAMT=rcb-ModSi3e_kAxem83yiKEjT5byQkd1o6DOy+rMcpGj5w@mail.gmail.com>
Subject: My Name is Miss Amina Ibrahim from Libya,I am 22 years old
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
Reply-To: missaminaibrahim47@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Name is Miss Amina Ibrahim from Libya, I am 22 years old, I am in
St.Christopher's Parish for refugee in Burkina Faso under United
Nations High commission for Refugee ,I lost my parents in the recent
war in  Libya, right now am in Burkina Faso, please save my life i am
in danger need your help in transferring my inheritance my father left
behind for me in a Bank in Burkina Faso here, I have every document
for the transfer, all i need is a foreigner who will stand as the
foreign partner to my father and beneficiary of the fund. The money
deposited in the Bank is US10.5 MILLION UNITED STATES DOLLAR) I just
need this fund to be transfer to your account so that I will come over
to your country and complete my education as you know that my country
have been in deep crisis due to the war .and I cannot go back there
again because I have nobody again all of my family were killed in the
war. If you are interested to save me and help me receive my
inheritance fund Please get back to me
Miss Amina IBRAHIM.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
