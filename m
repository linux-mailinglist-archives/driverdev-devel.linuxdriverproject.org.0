Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6233188EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FBA586B20;
	Thu, 11 Feb 2021 11:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qViGk7dHVjDI; Thu, 11 Feb 2021 11:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B3AE86B00;
	Thu, 11 Feb 2021 11:06:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 275811BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23A768734F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QwyjGPKpc2px for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:06:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3487E8701E
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:06:45 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11BB63cP128023;
 Thu, 11 Feb 2021 11:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=GiTaMAbIRvqIBQ+RpjfDs/lcGV/8NbrZwq2WqxCkbzA=;
 b=myFWP82pozcA3AqWRl9lpiwiisN+dXkaviUQjJ1reVnjNIrcbzdkEHDVnoZZLFy5jCjY
 Pe0w0jWXi1TLpJiTcDuQzfkTLmcCPor3tNKIOmysMKNOI90WmR179yXs9cXv0jo3zi8L
 xiRyaARZnz0GfSByLxhqZfYBoQk0OdsbSdOrpBVKvU72eeChs0qE2grfz1oxWK+4oC5h
 X9E2uRPuCEzBhpdfiC0SG2WSv00lqf1X+GpeFvVs/5Mdtut48zSsQhArJdP00elcvpv5
 B4yA0bnBX4NlkPtmDjVZCt7tGEL5meDLvw56QuIx7EeJ1rJ4Cc8Gsc6TxtmxH6GUhU/u +A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 36m4upwjpk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 11:06:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11BB5XVQ033690;
 Thu, 11 Feb 2021 11:06:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 36j513x5d7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 11:06:41 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11BB6fSS024277;
 Thu, 11 Feb 2021 11:06:41 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 11 Feb 2021 03:06:40 -0800
Date: Thu, 11 Feb 2021 14:06:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] staging: rtl8723bs: Replace one-element array with
 flexible-array member in struct ndis_80211_var_ie
Message-ID: <20210211110630.GG2696@kadam>
References: <20210210224937.GA11922@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210224937.GA11922@embeddedor>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110100
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 mlxscore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1011
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110100
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBGZWIgMTAsIDIwMjEgYXQgMDQ6NDk6MzdQTSAtMDYwMCwgR3VzdGF2byBBLiBSLiBT
aWx2YSB3cm90ZToKPiBUaGVyZSBpcyBhIHJlZ3VsYXIgbmVlZCBpbiB0aGUga2VybmVsIHRvIHBy
b3ZpZGUgYSB3YXkgdG8gZGVjbGFyZSBoYXZpbmcKPiBhIGR5bmFtaWNhbGx5IHNpemVkIHNldCBv
ZiB0cmFpbGluZyBlbGVtZW50cyBpbiBhIHN0cnVjdHVyZS4gS2VybmVsIGNvZGUKPiBzaG91bGQg
YWx3YXlzIHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNl
cy4gVGhlIG9sZGVyCj4gc3R5bGUgb2Ygb25lLWVsZW1lbnQgb3IgemVyby1sZW5ndGggYXJyYXlz
IHNob3VsZCBubyBsb25nZXIgYmUgdXNlZFsyXS4KPiAKPiBSZWZhY3RvciB0aGUgY29kZSBhY2Nv
cmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFycmF5IG1lbWJlciBpbgo+IHN0cnVjdCBu
ZGlzXzgwMjExX3Zhcl9pZSwgaW5zdGVhZCBvZiBhIG9uZS1lbGVtZW50IGFycmF5Lgo+IAo+IEFs
c28sIHRoaXMgaGVscHMgd2l0aCB0aGUgb25nb2luZyBlZmZvcnRzIHRvIGVuYWJsZSAtV2FycmF5
LWJvdW5kcyBhbmQKPiBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nczoKPiAKPiAgIENDIFtNXSAg
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d193bGFuX3V0aWwubwo+IEluIGZpbGUg
aW5jbHVkZWQgZnJvbSAuL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaW5jbHVkZS9kcnZfdHlw
ZXMuaDoyMCwKPiAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNi
cy9jb3JlL3J0d193bGFuX3V0aWwuYzo5Ogo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29y
ZS9ydHdfd2xhbl91dGlsLmM6IEluIGZ1bmN0aW9uIOKAmEhUX2NhcHNfaGFuZGxlcuKAmToKPiAu
L2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaW5jbHVkZS9iYXNpY190eXBlcy5oOjEwODoxMTog
d2FybmluZzogYXJyYXkgc3Vic2NyaXB0IDEgaXMgYWJvdmUgYXJyYXkgYm91bmRzIG9mIOKAmHU4
WzFd4oCZIHtha2Eg4oCYdW5zaWduZWQgY2hhclsxXeKAmX0gWy1XYXJyYXktYm91bmRzXQo+ICAg
MTA4IHwgIChFRjFCWVRFKCooKHU4ICopKF9fcHN0YXJ0KSkpKQo+ICAgICAgIHwgICAgICAgICAg
IF4KPiAuL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaW5jbHVkZS9iYXNpY190eXBlcy5oOjQy
Ojg6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYRUYxQllUReKAmQo+ICAgIDQyIHwg
ICgodTgpKF92YWwpKQo+ICAgICAgIHwgICAgICAgIF5+fn4KPiAuL2RyaXZlcnMvc3RhZ2luZy9y
dGw4NzIzYnMvaW5jbHVkZS9iYXNpY190eXBlcy5oOjEyNzo0OiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYTEVfUDFCWVRFX1RPX0hPU1RfMUJZVEXigJkKPiAgIDEyNyB8ICAgKExFX1Ax
QllURV9UT19IT1NUXzFCWVRFKF9fcHN0YXJ0KSA+PiAoX19iaXRvZmZzZXQpKSAmIFwKPiAgICAg
ICB8ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gLi9kcml2ZXJzL3N0YWdpbmcvcnRsODcy
M2JzL2luY2x1ZGUvcnR3X2h0Lmg6OTc6NTU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDi
gJhMRV9CSVRTX1RPXzFCWVRF4oCZCj4gICAgOTcgfCAjZGVmaW5lIEdFVF9IVF9DQVBBQklMSVRZ
X0VMRV9SWF9TVEJDKF9wRWxlU3RhcnQpICAgICBMRV9CSVRTX1RPXzFCWVRFKChfcEVsZVN0YXJ0
KSsxLCAwLCAyKQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4
NzIzYnMvY29yZS9ydHdfd2xhbl91dGlsLmM6MTEwNDo1ODogbm90ZTogaW4gZXhwYW5zaW9uIG9m
IG1hY3JvIOKAmEdFVF9IVF9DQVBBQklMSVRZX0VMRV9SWF9TVEJD4oCZCj4gIDExMDQgfCAgIGlm
IChURVNUX0ZMQUcocGh0cHJpdi0+c3RiY19jYXAsIFNUQkNfSFRfRU5BQkxFX1RYKSAmJiBHRVRf
SFRfQ0FQQUJJTElUWV9FTEVfUlhfU1RCQyhwSUUtPmRhdGEpKSB7Cj4gICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9y
dHdfd2xhbl91dGlsLmM6MTA1MTo3NTogd2FybmluZzogYXJyYXkgc3Vic2NyaXB0IDIgaXMgYWJv
dmUgYXJyYXkgYm91bmRzIG9mIOKAmHU4WzFd4oCZIHtha2Eg4oCYdW5zaWduZWQgY2hhclsxXeKA
mX0gWy1XYXJyYXktYm91bmRzXQo+ICAxMDUxIHwgICAgaWYgKChwbWxtZWluZm8tPkhUX2NhcHMu
dS5IVF9jYXBfZWxlbWVudC5BTVBEVV9wYXJhICYgMHgzKSA+IChwSUUtPmRhdGFbaV0gJiAweDMp
KQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5efn4KPiBkcml2ZXJzL3N0YWdpbmcvcnRsODcy
M2JzL2NvcmUvcnR3X3dsYW5fdXRpbC5jOiBJbiBmdW5jdGlvbiDigJhjaGVja19hc3NvY19BUOKA
mToKPiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X3dsYW5fdXRpbC5jOjE2MDY6
MTk6IHdhcm5pbmc6IGFycmF5IHN1YnNjcmlwdCA0IGlzIGFib3ZlIGFycmF5IGJvdW5kcyBvZiDi
gJh1OFsxXeKAmSB7YWthIOKAmHVuc2lnbmVkIGNoYXJbMV3igJl9IFstV2FycmF5LWJvdW5kc10K
PiAgMTYwNiB8ICAgICAgaWYgKHBJRS0+ZGF0YVs0XSA9PSAxKQo+ICAgICAgIHwgICAgICAgICAg
fn5+fn5+fn5+Xn5+Cj4gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d193bGFuX3V0
aWwuYzoxNjA5OjIwOiB3YXJuaW5nOiBhcnJheSBzdWJzY3JpcHQgNSBpcyBhYm92ZSBhcnJheSBi
b3VuZHMgb2Yg4oCYdThbMV3igJkge2FrYSDigJh1bnNpZ25lZCBjaGFyWzFd4oCZfSBbLVdhcnJh
eS1ib3VuZHNdCj4gIDE2MDkgfCAgICAgICBpZiAocElFLT5kYXRhWzVdICYgUlRfSFRfQ0FQX1VT
RV85MlNFKQo+ICAgICAgIHwgICAgICAgICAgIH5+fn5+fn5+fl5+fgo+IGRyaXZlcnMvc3RhZ2lu
Zy9ydGw4NzIzYnMvY29yZS9ydHdfd2xhbl91dGlsLmM6MTYxMzoxOTogd2FybmluZzogYXJyYXkg
c3Vic2NyaXB0IDUgaXMgYWJvdmUgYXJyYXkgYm91bmRzIG9mIOKAmHU4WzFd4oCZIHtha2Eg4oCY
dW5zaWduZWQgY2hhclsxXeKAmX0gWy1XYXJyYXktYm91bmRzXQo+ICAxNjEzIHwgICAgICBpZiAo
cElFLT5kYXRhWzVdICYgUlRfSFRfQ0FQX1VTRV9TT0ZUQVApCj4gICAgICAgfCAgICAgICAgICB+
fn5+fn5+fn5efn4KPiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X3dsYW5fdXRp
bC5jOjE2MTc6MjA6IHdhcm5pbmc6IGFycmF5IHN1YnNjcmlwdCA2IGlzIGFib3ZlIGFycmF5IGJv
dW5kcyBvZiDigJh1OFsxXeKAmSB7YWthIOKAmHVuc2lnbmVkIGNoYXJbMV3igJl9IFstV2FycmF5
LWJvdW5kc10KPiAgMTYxNyB8ICAgICAgIGlmIChwSUUtPmRhdGFbNl0gJiBSVF9IVF9DQVBfVVNF
X0pBR1VBUl9CQ1VUKSB7Cj4gICAgICAgfCAgICAgICAgICAgfn5+fn5+fn5+Xn5+Cj4gCj4gWzFd
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+IFsy
XSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjkvcHJvY2Vzcy9kZXByZWNhdGVk
Lmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwo+IAo+IExpbms6IGh0dHBz
Oi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OQo+IExpbms6IGh0dHBzOi8vZ2l0aHVi
LmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8xMDkKPiBCdWlsZC10ZXN0ZWQtYnk6IGtlcm5lbCB0ZXN0
IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xr
bWwvNjAyNDM0YjguamM1RG9YSjBibUhveGdJTCUyNWxrcEBpbnRlbC5jb20vCj4gU2lnbmVkLW9m
Zi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgoKTG9va3Mg
b2theSB0byBtZS4gIEkgbG9va2VkIGZvciBwb3RlbnRpYWwgaXNzdWVzIHdpdGggY2hhbmdpbmcg
dGhlCnNpemVvZiB0aGUgc3RydWN0IGJ1dCBjb3VsZG4ndCBmaW5kIGFueS4KClJldmlld2VkLWJ5
OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+CgpyZWdhcmRzLApkYW4g
Y2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
