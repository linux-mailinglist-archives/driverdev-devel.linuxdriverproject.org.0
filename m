Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD23578FF54
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Sep 2023 16:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25CCA41991;
	Fri,  1 Sep 2023 14:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25CCA41991
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LjRngRcM7Qqf; Fri,  1 Sep 2023 14:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E35584198E;
	Fri,  1 Sep 2023 14:39:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E35584198E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF8691BF3ED
 for <devel@linuxdriverproject.org>; Fri,  1 Sep 2023 14:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9698960B49
 for <devel@linuxdriverproject.org>; Fri,  1 Sep 2023 14:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9698960B49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fumn42pf6rCx for <devel@linuxdriverproject.org>;
 Fri,  1 Sep 2023 14:39:07 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8F5E60AC3
 for <devel@driverdev.osuosl.org>; Fri,  1 Sep 2023 14:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8F5E60AC3
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-59288c68eb8so22194307b3.0
 for <devel@driverdev.osuosl.org>; Fri, 01 Sep 2023 07:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693579146; x=1694183946;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9kydyMnwD//o0quRqImkimRYfrWW9k+FT8t/oHoxyE8=;
 b=ITttNhu/INpxikmOWiyuvVjrwy0NvYsc+vshlXSVodnR5BRF5DG56nLOGxQWfX0T/C
 y8FFlT2LX7J0Cr4sQdTEc7MqTn8pA+GkeJLcFz1I6VvUStUEacfWlVr31dvj6JMfcq2F
 MnWFhBWeRWlewiU1vbKL0Nr71ua8caHUotEBgOQc7B5pF6p4lYyx6C0N8VT10ll7SQOs
 abPI9d3WFOgSU7LiGPcQtCEtuxqn9E+lnXinnotNUt9MnozWptbWC/bFuJFWX9YfXEL5
 UTbiCZdnrRRjqhnSarzo7wtYrBXL6mkIUHYm1U9i2CNVci0ezIJC2IAdYK923fayBKR1
 tJQQ==
X-Gm-Message-State: AOJu0Yw9PZMnetMbypmZavukTKLE1izDM7xBbPmc9hAVuQsWOV2VISPL
 KSnhAhBo7Zh2BffRDTukO0D9L780rT94/bXWS2c=
X-Google-Smtp-Source: AGHT+IHpre+DY6mO5VxU6YbTst7nat8NyAg0OuMEVKGVsBp52o2VQFVMKJ77zwNH4vkwyISKnTB6sQDBqF/88m+iUXM=
X-Received: by 2002:a81:5b55:0:b0:58c:a7bc:fb74 with SMTP id
 p82-20020a815b55000000b0058ca7bcfb74mr3094638ywb.18.1693579145667; Fri, 01
 Sep 2023 07:39:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:374b:b0:326:1aad:c469 with HTTP; Fri, 1 Sep 2023
 07:39:05 -0700 (PDT)
From: "Mr.Razum Khailo" <razumkoykhailo@gmail.com>
Date: Fri, 1 Sep 2023 07:39:05 -0700
X-Google-Sender-Auth: iwdF7aPuVDVYmwVNn3cLGab5nso
Message-ID: <CAM0Fh2KpFeQ1JtQ42881HD8CMGxAwyUW9vjLPVCBED6k0Ow4kQ@mail.gmail.com>
Subject: Greetings from Ukraine,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693579146; x=1694183946; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :reply-to:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9kydyMnwD//o0quRqImkimRYfrWW9k+FT8t/oHoxyE8=;
 b=smtcG7/MrnUvTHQMipH+YWtr6IA52rmPMRqFW9Vj89ARenrAd+7xgDCC2/vyX9jjzn
 u83QJwM9Z7IsKgmd+kqtkC5nhNLwdcbBYD6Jahc87qD5uEPjui1zbKrr2Q7EfzCsXcZE
 c++QN+9oX7jJESgFjN2mmGbGzTyR2h+wZx4mmYDEFQ1KRnyVQdrJslgvhlcxf0f8Prss
 rM/xxcjSjMz4bSDEZLeUVIr1f8DAW70B4iLA/AqH3rvHbUfvo8SDL6JXanjQFNmJzJWW
 WEERDsXmnp6nAhb30bxGoBYnPjtpuLyXzPQlA26wE0ieZxIj2UDLhqYTckJT9DHNgVKI
 V6iQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=smtcG7/M
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
Reply-To: razumkoykhailo@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzwqBmcm9twqBVa3JhaW5lLA0KDQpNci7CoFJhenVta292wqBNeWtoYWlsbyzCoGFu
wqBlbnRyZXByZW5ldXLCoGJ1c2luZXNzbWFuwqBmcm9twqBPZGVzc2ENClVrcmFpbmUuwqBXaXRo
aW7CoGHCoHllYXLCoHBsdXPCoHNvbWXCoG1vbnRoc8Kgbm93LMKgbW9yZcKgdGhhbsKgOC4ywqBt
aWxsaW9uDQpwZW9wbGXCoGFyb3VuZMKgdGhlwqBjaXRpZXPCoG9mwqBtecKgY291bnRyecKgVWty
YWluZcKgaGF2ZcKgYmVlbsKgZXZhY3VhdGVkwqB0bw0KYcKgc2FmZcKgbG9jYXRpb27CoGFuZMKg
b3V0wqBvZsKgdGhlwqBjb3VudHJ5LMKgbW9zdMKgZXNwZWNpYWxsecKgY2hpbGRyZW7CoHdpdGgN
CnRoZWlywqBwYXJlbnRzLMKgbnVyc2luZ8KgbW90aGVyc8KgYW5kwqBwcmVnbmFudMKgd29tZW4s
wqBhbmTCoHRob3NlwqB3aG/CoGhhdmUNCmJlZW7CoHNlcmlvdXNsecKgd291bmRlZMKgYW5kwqBu
ZWVkwqB1cmdlbnTCoG1lZGljYWzCoGF0dGVudGlvbi7CoEnCoHdhc8KgYW1vbmcNCnRob3NlwqB0
aGF0wqB3ZXJlwqBhYmxlwqB0b8KgZXZhY3VhdGXCoHRvwqBvdXLCoG5laWdoYm91cmluZ8KgY291
bnRyaWVzwqBhbmTCoEnigJltDQpub3fCoGluwqB0aGXCoHJlZnVnZWXCoGNhbXDCoG9mwqBUZXLC
oEFwZWzCoEdyb25pbmdlbsKgaW7CoHRoZcKgTmV0aGVybGFuZHMuDQoNCknCoG5lZWTCoGHCoGZv
cmVpZ27CoHBhcnRuZXLCoHRvwqBlbmFibGXCoG1lwqB0b8KgdHJhbnNwb3J0wqBtecKgaW52ZXN0
bWVudA0KY2FwaXRhbMKgYW5kwqB0aGVuwqByZWxvY2F0ZcKgd2l0aMKgbXnCoGZhbWlseSzCoGhv
bmVzdGx5wqBpwqB3aXNowqBJwqB3aWxsDQpkaXNjdXNzwqBtb3JlwqBhbmTCoGdldMKgYWxvbmcu
wqBJwqBuZWVkwqBhwqBwYXJ0bmVywqBiZWNhdXNlwqBtecKgaW52ZXN0bWVudA0KY2FwaXRhbMKg
aXPCoGluwqBtecKgaW50ZXJuYXRpb25hbMKgYWNjb3VudC7CoEnigJltwqBpbnRlcmVzdGVkwqBp
bsKgYnV5aW5nDQpwcm9wZXJ0aWVzLMKgaG91c2VzLMKgYnVpbGRpbmfCoHJlYWzCoGVzdGF0ZXMs
wqBtecKgY2FwaXRhbMKgZm9ywqBpbnZlc3RtZW50DQppc8KgKCQzMMKgTWlsbGlvbsKgVVNEKcKg
LsKgVGhlwqBmaW5hbmNpYWzCoGluc3RpdHV0aW9uc8KgaW7CoG15wqBjb3VudHJ5DQpVa3JhaW5l
wqBhcmXCoGFsbMKgc2hvdMKgZG93bsKgZHVlwqB0b8KgdGhlwqBjcmlzaXPCoG9mwqB0aGlzwqB3
YXLCoG9uwqBVa3JhaW5lDQpzb2lswqBiecKgdGhlwqBSdXNzaWFuwqBmb3JjZXMuwqBNZWFud2hp
bGUswqBpZsKgdGhlcmXCoGlzwqBhbnnCoHByb2ZpdGFibGUNCmludmVzdG1lbnTCoHRoYXTCoHlv
dcKgaGF2ZcKgc2/CoG11Y2jCoGV4cGVyaWVuY2XCoGluwqB5b3VywqBjb3VudHJ5LMKgdGhlbsKg
d2UNCmNhbsKgam9pbsKgdG9nZXRoZXLCoGFzwqBwYXJ0bmVyc8Kgc2luY2XCoEnigJltwqBhwqBm
b3JlaWduZXIuDQoNCknCoGNhbWXCoGFjcm9zc8KgeW91csKgZS1tYWlswqBjb250YWN0wqB0aHJv
dWdowqBwcml2YXRlwqBzZWFyY2jCoHdoaWxlwqBpbsKgbmVlZA0Kb2bCoHlvdXLCoGFzc2lzdGFu
Y2XCoGFuZMKgScKgZGVjaWRlZMKgdG/CoGNvbnRhY3TCoHlvdcKgZGlyZWN0bHnCoHRvwqBhc2vC
oHlvdcKgaWYNCnlvdcKga25vd8KgYW55wqBsdWNyYXRpdmXCoGJ1c2luZXNzwqBpbnZlc3RtZW50
wqBpbsKgeW91csKgY291bnRyecKgacKgY2FuDQppbnZlc3TCoG15wqBtb25lecKgc2luY2XCoG15
wqBjb3VudHJ5wqBVa3JhaW5lwqBzZWN1cml0ecKgYW5kwqBlY29ub21pYw0KaW5kZXBlbmRlbnTC
oGhhc8KgbG9zdMKgdG/CoHRoZcKgZ3JlYXRlc3TCoGxvd2VywqBsZXZlbCzCoGFuZMKgb3VywqBj
dWx0dXJlwqBoYXMNCmxvc3TCoGluY2x1ZGluZ8Kgb3VywqBoYXBwaW5lc3PCoGhhc8KgYmVlbsKg
dGFrZW7CoGF3YXnCoGZyb23CoHVzLsKgT3VywqBjb3VudHJ5DQpoYXPCoGJlZW7CoG9uwqBmaXJl
wqBmb3LCoG1vcmXCoHRoYW7CoGHCoHllYXLCoG5vdy4NCg0KSWbCoHlvdcKgYXJlwqBjYXBhYmxl
wqBvZsKgaGFuZGxpbmfCoHRoaXPCoGJ1c2luZXNzwqBwYXJ0bmVyc2hpcCzCoGNvbnRhY3TCoG1l
DQpmb3LCoG1vcmXCoGRldGFpbHMswqBJwqB3aWxswqBhcHByZWNpYXRlwqBpdMKgaWbCoHlvdcKg
Y2FuwqBjb250YWN0wqBtZQ0KaW1tZWRpYXRlbHkuwqBZb3XCoG1hecKgYXPCoHdlbGzCoHRlbGzC
oG1lwqBhwqBsaXR0bGXCoG1vcmXCoGFib3V0wqB5b3Vyc2VsZi4NCkNvbnRhY3TCoG1lwqB1cmdl
bnRsecKgdG/CoGVuYWJsZcKgdXPCoHRvwqBwcm9jZWVkwqB3aXRowqB0aGXCoGJ1c2luZXNzLsKg
ScKgd2lsbA0KYmXCoHdhaXRpbmfCoGZvcsKgeW91csKgcmVzcG9uc2UuwqBNecKgc2luY2VyZcKg
YXBvbG9naWVzwqBmb3LCoHRoZQ0KaW5jb252ZW5pZW5jZS4NCg0KDQpUaGFua8KgeW91IQ0KDQpN
ci4gUmF6dW1rb3bCoE15a2hhaWxvLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
