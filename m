Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFA3482C9D
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jan 2022 21:01:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D5AF402BA;
	Sun,  2 Jan 2022 20:01:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i51kC1O2vXQK; Sun,  2 Jan 2022 20:01:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBB2C40266;
	Sun,  2 Jan 2022 20:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 748F41BF3F4
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 20:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6258A60593
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 20:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzOi3ZSxd9Yu for <devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 20:01:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE0D560AB1
 for <devel@driverdev.osuosl.org>; Sun,  2 Jan 2022 20:01:28 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id c3so10390085pls.5
 for <devel@driverdev.osuosl.org>; Sun, 02 Jan 2022 12:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=+dkiLt9yMO6x46qZW333QEXi70FYxlft58uImyv90V8=;
 b=Aohz0t0nDLKOV073RtsY2yZyny/CBNTQ57EyFZhsqjjTLKMos9pQl9DchJiB1UAPCp
 yKOEtd2UKqluZJ0O3AQNlBjEJ7kaQP3YKl2Ta0oac1/LPsiaLel4XGaPV1EE8qAmJAbw
 TF7zxzClnlZcu/qP+AXw6R860yO5mYaVHhnlteHBRuQ52flww/comqX9rYLUK7y1/IaZ
 yfQh1kDje3IdSvWG5AGMS+MTXV0QnYLuMHQkpZSI2bLk/2VW0pjknv1rHwMjsMIZpNVY
 rBtP9loh6gLTa5RZ1IBHRzTNqc5NsbYH3ebJ04YECWwP2dXAKBbAwcqHOV3TOPe3HA71
 Q5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=+dkiLt9yMO6x46qZW333QEXi70FYxlft58uImyv90V8=;
 b=ByH5kYI3c0TSOnueqnc+vmilwtJjYxipysSF1ohVqDjX6aZliv4PLiloBeS+EgXy1+
 G7xk7zC8T0r+YGm5pYhbgKkFdJIA4pAgyNuO5Cua90qBkQZVzz/ZSgy8RPAyq3U1kWg2
 HMNiDf66KV6CgLA1XEKqOLTFVNo5s7a1t9tVpHPDBLQF2V+nzXvD1ec2NWgSC+7MGSp0
 r3M303baP15SkDgfprlHrp6SQ+oIXpGy60Ur05ucN4DaXMfUqsC3SMKe9KdcT85GJqah
 Cst8kuzzXb7Wg7SGxzCPmcjN+aMVnoSqsUMtZ1l8zlD+JjKv8wUEUQrd3xMrJ/k1OGyb
 LN9g==
X-Gm-Message-State: AOAM533JXoSAq7ipwMtRiUm4z5DKAIRsmky1KoDwmMPcJ1ylFlLbTtEs
 OlWo8kEunOfWoJ6UL/FSShgpWJk0x/N7Ithf2b4=
X-Google-Smtp-Source: ABdhPJxEi9cmiZL4wCBUydPyNwrFUCCqKLuQ5d9/oJz7iiwyvQfej+ZvuxeppD02jd7j8OVXvb1HMMt86i1jmq6GRX4=
X-Received: by 2002:a17:902:f203:b0:148:a2e8:2c5e with SMTP id
 m3-20020a170902f20300b00148a2e82c5emr42211636plc.173.1641153688075; Sun, 02
 Jan 2022 12:01:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:4515:0:0:0:0 with HTTP; Sun, 2 Jan 2022 12:01:27
 -0800 (PST)
From: "Mr. Luis Fernando" <kasimmohamed405@gmail.com>
Date: Sun, 2 Jan 2022 12:01:27 -0800
Message-ID: <CANiFnWCYcqUsRmwgOfEZbU6zOt9XMnnq-ka8WrNht6ZuXXiHtg@mail.gmail.com>
Subject: GOOD DAY
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
Reply-To: mr.luisfernando5050@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gDQpJIGFtIE1yLmx1aXMgZmVybmFuZG8NCg0KSGkgRnJpZW5kIEkgd29yayBpbiBhIEJhbmsg
Zm9yIEFmcmljYSAoQk9BKSBoZXJlIGluIEJVUktJTkEgRkFTTw0KDQpJIHdhbnRzIHRvIHRyYW5z
ZmVyIGFuIGFiYW5kb25lZCBzdW0gb2YgMjcuNSBtaWxsaW9ucyBVU0QgdG8geW91DQp0aHJvdWdo
IEFUTSBWSVNBIENBUkQgLjUwJSB3aWxsIGJlIGZvciB5b3UuIE5vIHJpc2sgaW52b2x2ZWQuDQoN
Cg0KVGhlIChCT0EpIGJhbmsgd2FzIGJlaW5nIHVzZWQgYnkgbWFueSBBZnJpY2FuIFBvbGl0aWNp
YW5zIHRvIGRpdmVydA0KZnVuZHMgKHRoZSBQb2xpdGljaWFucyBsb290ZWQgb3ZlcjViaWxsaW9u
IFVuaXRlZCBTdGF0ZXMgZG9sbGFycykgdG8NCnRoZWlyIGZvcmVpZ24gYWNjb3VudHMgYW5kIHRo
ZXkgZGlkIE5vdCBib3RoZXIgdG8ga25vdyBob3cgbXVjaCB3YXMNCnRyYW5zZmVycmVkIGJlY2F1
c2UgdGhlIGZ1bmRzIGJlbG9uZ2VkIHRvIHRoZSAnU3RhdGUnIHRoYXQgaXMgd2h5IEkNCmFsc28g
ZGVjaWRlZCB0byBwdXQgYXBhcnQgdGhlIHN1bSBvZiAgJDI3LjVtaWxsaW9uIERvbGxhcnMgd2hp
Y2ggaXMNCnN0aWxsIGluIG91ciBiYW5rIHVuZGVyIG15IGN1c3RvZHkgZm9yIGEgbG9uZyBwZXJp
b2Qgbm93IQ0KDQpJIGhhdmUgdG8gZ2l2ZSB5b3UgYWxsIHRoZSByZXF1aXJlZCBndWlkZWxpbmVz
IHNvIHRoYXQgeW91IGRvIG5vdA0KbWFrZSBhbnkgbWlzdGFrZS4gSWYgeW91IGFyZSBjYXBhYmxl
IHRvIGhhbmRsZSB0aGUgdHJhbnNhY3Rpb24gQ29udGFjdA0KbWUgZm9yIG1vcmUgZGV0YWlscy4g
S2luZGx5IHJlcGx5IG1lIGJhY2sgdG8gbXkgYWx0ZXJuYXRpdmUgZW1haWwNCmFkZHJlc3MgKG1y
Lmx1aXNmZXJuYW5kbzUwNTBAZ21haWwuY29tKSBNci5sdWlzIEZlcm5hbmRvDQoNCg0KDQoNCg0K
DQrmiJHmmK/ot6/mmJPmlq/Ct+i0ueWwlOWNl+WkmuWFiOeUnw0KDQrll6jvvIzmnIvlj4vvvIzm
iJHlnKjluIPln7rnurPms5XntKLnmoTkuIDlrrbpnZ7mtLLpk7booYwgKEJPQSkg5bel5L2cDQoN
CuaIkeaDs+mAmui/hyBBVE0gVklTQSBDQVJEIOWwhuS4gOeslOW6n+W8g+eahCAyNzUwIOS4h+e+
juWFg+i9rOe7meaCqO+8jDAuNTAlIOWwhuaYr+e7meaCqOeahOOAgiDkuI3mtonlj4rpo47pmanj
gIINCg0KDQrorrjlpJrpnZ7mtLLmlL/lrqLliKnnlKggKEJPQSkg6ZO26KGM5bCG6LWE6YeR77yI
5pS/5a6i5o6g5aS65LqG6LaF6L+HIDUwDQrkur/nvo7lhYPvvInovaznp7vliLDku5bku6znmoTl
pJblm73otKbmiLfvvIzku5bku6zkuZ/mh5Llvpfnn6XpgZPovaznp7vkuoblpJrlsJHvvIzlm6Dk
uLrov5nkupvotYTph5HlsZ7kuo7igJzlm73lrrbigJ0NCuS4uuS7gOS5iOaIkei/mOWGs+WumuaK
iueOsOWcqOmVv+acn+S/neeuoeWcqOaIkeS7rOmTtuihjOeahDI3NTDkuIfnvo7lhYPliIblvIDv
vIENCg0KICDmiJHlv4Xpobvnu5nkvaDmiYDmnInlv4XopoHnmoTmjIflr7zmlrnpkojvvIzov5nm
oLfkvaDlsLHkuI3kvJrniq/ku7vkvZXplJnor6/jgIIg5aaC5p6c5oKo5pyJ6IO95Yqb5aSE55CG
5Lqk5piT77yM6K+36IGU57O75oiR5LqG6Kej5pu05aSa6K+m5oOF44CCIOivt+WbnuWkjeaIkeea
hOWkh+eUqOeUteWtkOmCruS7tuWcsOWdgA0KKG1yLmx1aXNmZXJuYW5kbzUwNTBAZ21haWwuY29t
KSBNci5sdWlzIEZlcm5hbmRvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
