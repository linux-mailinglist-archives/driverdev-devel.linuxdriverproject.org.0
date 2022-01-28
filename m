Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2A649F059
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jan 2022 02:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C7B881AEA;
	Fri, 28 Jan 2022 01:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XTUl_uC_xByb; Fri, 28 Jan 2022 01:07:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B75FF81A8E;
	Fri, 28 Jan 2022 01:07:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED111BF2AB
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 01:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ADC64038B
 for <devel@linuxdriverproject.org>; Fri, 28 Jan 2022 01:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zU6xG29yR1CN for <devel@linuxdriverproject.org>;
 Fri, 28 Jan 2022 01:07:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7884E40019
 for <devel@driverdev.osuosl.org>; Fri, 28 Jan 2022 01:07:36 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id n8so8674095lfq.4
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 17:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=+oNxYn95HIkl5UrpQFHz7Di42C06fte+YL8gsa9FyyA=;
 b=CUGLME60kn8awUXiQNpqZAvmtW/Eu8HVcHH+sSUbwahJoziHDf57UnwTNbDGrGh+6w
 LhHLD0MAPIA4c3iiWrNHVsE2aknVwX2e8XJSSJK6hANnq9ZsZF6oqG205QYVmFI/XjBI
 06oIDm9YdEeEH1VQebuVi23B0aaAz53C4Np3+wEySegTzQpobZ5Afy9mW3hhbOdxANEn
 /8zvAmP4h3hEf3it8vqhVywNazjSV+ZglSMJevIv0XoQL2lmbT0b37hvJDObth7r4BF6
 tEFfg4ln3mFTkVGFFIFZXC8XyjWOGZB65sWPiGFOy39C4bat/rdFRgSCcq9UIBkrprke
 jCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=+oNxYn95HIkl5UrpQFHz7Di42C06fte+YL8gsa9FyyA=;
 b=Qx0i21ytELOtuEqxEfegxCd/u+qQudacP/DcgWH20q9tN8UrIHuG7X+J3lNVuEUKTP
 ePv2sdEFE3vyXweKa18J510jjIQVP5L6e5eEPeKo7ufBGBOeSxhd45/T+M9BGjM5B4kz
 LgoZJrHHuRSWQn0oSdqQ+41+xrk7vc9WWfmVSZOOpEkofREas8qA9K7xYKO54etTjFrn
 AXexmtWsXRZBMqyaaCeBRiw3B/oPpnoVpRsdnwp6KRHBbd4kzfjhciDAcHeo/igyCeyV
 8BI0s3UYdBCiAebUmeDxhZTXLz4Gj2xMzSLDOfSZxVEni5bfRg2Lw7ue/nIl/iiGRGU5
 c94A==
X-Gm-Message-State: AOAM533nRxN2Ud2GjFUfFJal3gr9gW6ZtUq7qsFcsQZrD952S906IkUo
 0DRUCflRx2xU+MIprM9O7th81jIew/wYTx9UtUY=
X-Google-Smtp-Source: ABdhPJwvVFij2N/6doJvlNBipPYNODP+sJHpaTg5SpP5/BQMFVklKKzh/usInLfFVbOmmz6ovBTnZwb+MBP0lyj0hM4=
X-Received: by 2002:ac2:5201:: with SMTP id a1mr4362836lfl.146.1643332054036; 
 Thu, 27 Jan 2022 17:07:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:408c:b0:193:4dd:8aae with HTTP; Thu, 27 Jan 2022
 17:07:33 -0800 (PST)
From: SULEIMAN ABU <larsnbarro09@gmail.com>
Date: Thu, 27 Jan 2022 17:07:33 -0800
Message-ID: <CAF6DnxjDbxRWjOusmDRA7rsJ-Mz48i3KqxyJ5ogAtCk8m6w2eg@mail.gmail.com>
Subject: Urgent Reply
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
Reply-To: abuxx111@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzLApXaXRoIGR1ZSByZXNwZWN0IHRvIHlvdXIgcGVyc29uYWxpdHkgYW5kIG11Y2gg
c2luY2VyaXR5IG9mIHRoaXMKcHVycG9zZSwgSSBtYWtlIHRoaXMgY29udGFjdCB3aXRoIHlvdSBi
ZWxpZXZpbmcgdGhhdCB5b3UgY2FuIGJlIG9mCmdyZWF0IGFzc2lzdGFuY2UgdG8gbWUuIE15IG5h
bWUgaXMgTXIuU3VsZW1hbiBBYnUsIGZyb20gQnVya2luYSBGYXNvLApJJ20gdGhlIENoYWlybWFu
IG9mIEZPUkVJR04gUEFZTUVOVFMgQ09OVFJBQ1QgQVdBUkQgQ09NTUlUVEVFIGFuZCBhbHNvCkRp
cmVjdG9yIG9mIEZvcmVpZ24gUmVtaXR0YW5jZSBEZXBhcnRtZW50IG9mIEFmcmljYW4gRGV2ZWxv
cG1lbnQgQmFuawooQURCKSBCdXJraW5hIEZhc28sIFBsZWFzZSBzZWUgdGhpcyBhcyBhIGNvbmZp
ZGVudGlhbCBtZXNzYWdlIGFuZCBkbwpub3QgcmV2ZWFsIGl0IHRvIGFub3RoZXIgcGVyc29uIGJl
Y2F1c2UgaXTigJlzIGEgdG9wIHNlY3JldC4KCkl0IGlzIHdpdGggdHJ1c3QgdGhhdCBJIHdpc2gg
dG8gY29udGFjdCB5b3Ugb24gdGhpcyBtYXR0ZXIgY29uY2VybmluZwp0aGUgdHJhbnNmZXIgb2Yg
VVMkMTcuNCBNaWxsaW9uIERvbGxhcnMuIFRoaXMgbW9uZXkgY2FtZSBvdXQgZnJvbQpDb250cmFj
dCB0aGF0IHdhcyBhd2FyZGVkIHRvIGEgZm9yZWlnbiBjb21wYW55IGZvciBNYWludGVuYW5jZSBv
ZiBPSUwKUkVGSU5FUlkgUExBTlQgaW4gQnVya2luYSBGYXNvIHllYXJzIGJhY2suIENvbnRyYWN0
Ck5vO1NPTkFCSFkvRVBSLzEwNC9QRUQvMjAwNCwgVGhlIGNvbnRyYWN0IHdhcyBvdmVyLWludm9p
Y2VkIGJ5IG1lIHRvCnRoZSB0dW5lIG9mIFVTJDE3LjQgbWlsbGlvbiBPbmx5LCBhbmQgdGhpcyBm
dW5kIGhhdmUgdHJhbnNmZXIgdG8gb3VyCkNvcnJlc3BvbmRpbmcgYmFuayBpbiBEdWJhaSBzbyB0
aGV5J2xsIHRyYW5zZmVyIHRoZSBmdW5kcyB0byB5b3VyIGJhbmsKYWNjb3VudCwgQW5kIGkgaGF2
ZSBhbGwgdGhlIGRvY3VtZW50cyB5b3Ugd2lsbCBwcmVzZW50IHRvIG91cgpjb3JyZXNwb25kaW5n
IGZvciB0aGUgdHJhbnNmZXIgdGhlIGZ1bmQgdG8geW91ciBiYW5rIGFjY291bnQgd2l0aG91dAph
bnkgZGVsYXkuCgpJIGhhdmUgdW5hbmltb3VzbHkgZGVjaWRlZCB0byB0cmFuc2ZlciB0aGUgRnVu
ZHMgdG8gYSByZWxpYWJsZSBmb3JlaWduCmJhbmsgYWNjb3VudCwgSSB3YW50IHRvIHByZXNlbnQg
eW91IHRvIHRoZSBiYW5rIHRvIHByb3ZpZGUgYSByZWxpYWJsZQpiYW5rIGFjY291bnQgd2hlcmUg
dGhpcyBtb25leSB3aWxsIGJlIHRyYW5zZmVycmVkIHRvIHlvdSwgYmVjYXVzZSB3ZQpDaXZpbCBT
ZXJ2YW50cyBhbmQgYXMgYSBiYW5rZXIgd2UgYXJlIG5vdCBhbGxvd2VkIHRvIG9wZXJhdGUgYW55
CmZvcmVpZ24gYmFuayBhY2NvdW50IHdoaWxlIGluIHNlcnZpY2VzLiBJIGhhdmUgd29ya2VkIG91
dCBhbGwKbW9kYWxpdGllcyBwdXQgaW4gcGxhY2UgZm9yIGxlZ2FsIGFuZCBzYWZlIHRyYW5zZmVy
IG9mIHRoZSBmdW5kcwpkaXJlY3RseSBpbnRvIHlvdXIgbm9taW5hdGVkIGJhbmsgYWNjb3VudC4g
QW5kIG5vdGUgdGhhdCBJIGhhdmUgbG9zdApzb21lIGZ1bmRzIGluIHRoZSBwYXN0IGluIHNpbWls
YXIgdHJhbnNmZXIgYnV0IGkgcmVwb3NlIHRydXN0IGluIHlvdQpiYXNlZCBvbiB5b3VyIHByb2Zp
bGUgYW5kIGkgbmVlZCBhIG11dHVhbCBhZ3JlZW1lbnQgZm9yIHNhZmUga2VlcGluZwpvZiB0aGUg
ZnVuZHMuCgpEdWUgdG8gbXkgcG9zaXRpb24gaW4gdGhlIGJhbmsgYW5kIG15IHJldGlyZW1lbnQg
YXBwcm9hY2hpbmcsIEkgY2Fubm90CmFmZm9yZCBhIHNsaXAgaW4gdGhpcyB0cmFuc2FjdGlvbi4g
Q29udGFjdCBtZSB3aXRoIHRoZXNlIGluZm9ybWF0aW9uCm1lbnRpb25lZCBoZXJldW5kZXI7Cgoo
MSkgWW91ciBjb21wbGV0ZSBuYW1lcy9jb21wYW55IG5hbWVzCigyKSBZb3VyIGFnZQooMylZb3Vy
IG9jY3VwYXRpb24KKDQpWW91ciBtYXJpdGFsIHN0YXR1cwooNSlZb3VyIGZ1bGwgcmVzaWRlbnRp
YWwgYWRkcmVzcyBhbmQgY291bnRyeS4KKDYpWW91ciBkaXJlY3QgcGhvbmUgYW5kIGZheCBudW1i
ZXJzLgooNylBIGNvcHkgb2YgeW91ciBkcml2aW5nIGxpY2Vuc2Ugb3IgcGFzc3BvcnQgc2Nhbm5l
ZCBhbmQgc2VudCB0byBtZSBieSBtYWlsLgoKSSBzaGFsbCB1c2UgdGhpcyBpbmZvcm1hdGlvbiB0
byBzZWN1cmUgYWxsIHRoZSBvcmlnaW5hbCBjb3BpZXMgb2YgdGhlCmNvbnRyYWN0IGRvY3VtZW50
cyBhbmQgd2lsbCBmdXJ0aGVyIG5lZ290aWF0ZSB3aXRoIHlvdSBvbiB5b3VyCmNvbXBlbnNhdGlv
bi9wZXJjZW50YWdlIHRoYXQgeW91IGRlc2VydmUgdG8gcGFydGljaXBhdGUgaW4gdGhpcwpUcmFu
c2FjdGlvbi4gUGxlYXNlLCBub3RlIHRoYXQgdGhpcyB0cmFuc2FjdGlvbiBuZWVkcyB1dG1vc3QK
Q29uZmlkZW50aWFsaXR5IHBlbmRpbmcgd2hlbiB0aGUgbW9uZXkgaXMgY3JlZGl0ZWQgaW50byB5
b3VyIGFjY291bnQuCkknbSBsb29raW5nIGZvcndhcmQgdG8geW91ciBmYXZvcmFibGUgcmVzcG9u
c2UgaW4gdGhpcyBtYXR0ZXIuCm9rYXkKClRoYW5rcyBpbiBhbnRpY2lwYXRpb24sCk1yLlN1bGVt
YW4gQWJ1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
